package org.apache.poi.hwpf.converter;

import com.sunia.HTREnginev2.b7n;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.HWPFOldDocument;
import org.apache.poi.hwpf.OldWordFileFormatException;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.HWPFList;
import org.apache.poi.hwpf.usermodel.Table;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.ExtUnits;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes12.dex */
public class AbstractWordUtils {
    static final String EMPTY = "";
    private static final Logger LOG = LogManager.getLogger((Class<?>) AbstractWordUtils.class);
    public static final float TWIPS_PER_INCH = 1440.0f;
    public static final int TWIPS_PER_PT = 20;

    /* loaded from: classes12.dex */
    public static class NumberingState {
        private final Map<String, Integer> levels = new HashMap();
    }

    public static int[] buildTableCellEdgesArray(Table table) {
        TreeSet treeSet = new TreeSet();
        for (int i = 0; i < table.numRows(); i++) {
            TableRow row = table.getRow(i);
            for (int i2 = 0; i2 < row.numCells(); i2++) {
                TableCell cell = row.getCell(i2);
                treeSet.add(Integer.valueOf(cell.getLeftEdge()));
                treeSet.add(Integer.valueOf(cell.getLeftEdge() + cell.getWidth()));
            }
        }
        Integer[] numArr = (Integer[]) treeSet.toArray(new Integer[0]);
        int[] iArr = new int[numArr.length];
        for (int i3 = 0; i3 < numArr.length; i3++) {
            iArr[i3] = numArr[i3].intValue();
        }
        return iArr;
    }

    public static boolean canBeMerged(Node node, Node node2, String str) {
        if (node.getNodeType() == 1 && node2.getNodeType() == 1) {
            Element element = (Element) node;
            Element element2 = (Element) node2;
            if (Objects.equals(str, element.getTagName()) && Objects.equals(str, element2.getTagName())) {
                NamedNodeMap attributes = element.getAttributes();
                NamedNodeMap attributes2 = element2.getAttributes();
                if (attributes.getLength() != attributes2.getLength()) {
                    return false;
                }
                for (int i = 0; i < attributes.getLength(); i++) {
                    Attr attr = (Attr) attributes.item(i);
                    Attr attr2 = isNotEmpty(attr.getNamespaceURI()) ? (Attr) attributes2.getNamedItemNS(attr.getNamespaceURI(), attr.getLocalName()) : (Attr) attributes2.getNamedItem(attr.getName());
                    if (attr2 == null || !Objects.equals(attr.getTextContent(), attr2.getTextContent())) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static void compactChildNodesR(Element element, String str) {
        NodeList childNodes = element.getChildNodes();
        int i = 0;
        while (i < childNodes.getLength() - 1) {
            Node item = childNodes.item(i);
            Node item2 = childNodes.item(i + 1);
            if (canBeMerged(item, item2, str)) {
                while (item2.getChildNodes().getLength() > 0) {
                    item.appendChild(item2.getFirstChild());
                }
                item2.getParentNode().removeChild(item2);
                i--;
            }
            i++;
        }
        NodeList childNodes2 = element.getChildNodes();
        for (int i2 = 0; i2 < childNodes2.getLength() - 1; i2++) {
            Node item3 = childNodes2.item(i2);
            if (item3 instanceof Element) {
                compactChildNodesR((Element) item3, str);
            }
        }
    }

    public static String getBorderType(BorderCode borderCode) {
        if (borderCode == null) {
            throw new IllegalArgumentException("borderCode is null");
        }
        switch (borderCode.getBorderType()) {
            case 3:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
                return "double";
            case 4:
            case 5:
            case 20:
            default:
                return "solid";
            case 6:
            case 9:
                return "dotted";
            case 7:
            case 8:
            case 22:
            case 23:
                return "dashed";
            case 24:
                return "ridge";
            case 25:
                return "grooved";
        }
    }

    public static String getBorderWidth(BorderCode borderCode) {
        int lineWidth = borderCode.getLineWidth();
        int i = lineWidth / 8;
        return i + "." + ((lineWidth - (i * 8)) * 125) + ExtUnits.UNIT_PT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [int] */
    public static String getBulletText(NumberingState numberingState, HWPFList hWPFList, char c) {
        int startAt;
        StringBuilder sb = new StringBuilder();
        for (char c2 : hWPFList.getNumberText(c).toCharArray()) {
            if (c2 < 9) {
                int lsid = hWPFList.getLsid();
                String str = lsid + "#" + ((int) c2);
                if (hWPFList.isStartAtOverriden(c2) || !numberingState.levels.containsKey(str)) {
                    startAt = hWPFList.getStartAt(c2);
                    numberingState.levels.put(str, Integer.valueOf(startAt));
                } else {
                    startAt = ((Integer) numberingState.levels.get(str)).intValue();
                    if (c == c2) {
                        startAt++;
                        numberingState.levels.put(str, Integer.valueOf(startAt));
                    }
                }
                if (c == c2) {
                    while (true) {
                        c2++;
                        if (c2 >= 9) {
                            break;
                        }
                        numberingState.levels.remove(lsid + "#" + ((int) c2));
                    }
                }
                sb.append(NumberFormatter.getNumber(startAt, hWPFList.getNumberFormat(c)));
            } else {
                sb.append(c2);
            }
        }
        byte typeOfCharFollowingTheNumber = hWPFList.getTypeOfCharFollowingTheNumber(c);
        if (typeOfCharFollowingTheNumber == 0) {
            sb.append("\t");
        } else if (typeOfCharFollowingTheNumber == 1) {
            sb.append(" ");
        }
        return sb.toString();
    }

    public static String getColor(int i) {
        switch (i) {
            case 2:
                return "blue";
            case 3:
                return "cyan";
            case 4:
                return "green";
            case 5:
                return "magenta";
            case 6:
                return "red";
            case 7:
                return "yellow";
            case 8:
                return "white";
            case 9:
                return "darkblue";
            case 10:
                return "darkcyan";
            case 11:
                return "darkgreen";
            case 12:
                return "darkmagenta";
            case 13:
                return "darkred";
            case 14:
                return "darkyellow";
            case 15:
                return "darkgray";
            case 16:
                return "lightgray";
            default:
                return "black";
        }
    }

    public static String getColor24(int i) {
        if (i == -1) {
            throw new IllegalArgumentException("This colorref is empty");
        }
        int i2 = i & 16777215;
        int i3 = ((i2 & 16711680) >> 16) | ((i2 & 255) << 16) | (65280 & i2);
        switch (i3) {
            case 0:
                return "black";
            case 128:
                return "navy";
            case 255:
                return "blue";
            case 32768:
                return "green";
            case b7n.f65484e /* 32896 */:
                return "teal";
            case 65280:
                return "lime";
            case 65535:
                return "aqua";
            case 8388608:
                return "maroon";
            case 8388736:
                return "purple";
            case 8421376:
                return "olive";
            case 8421504:
                return "gray";
            case 12632256:
                return "silver";
            case 16711680:
                return "red";
            case 16711935:
                return "fuchsia";
            case 16776960:
                return "yellow";
            case 16777215:
                return "white";
            default:
                StringBuilder sb = new StringBuilder("#");
                String hexString = Integer.toHexString(i3);
                for (int length = hexString.length(); length < 6; length++) {
                    sb.append('0');
                }
                sb.append(hexString);
                return sb.toString();
        }
    }

    public static String getJustification(int i) {
        switch (i) {
            case 0:
            case 7:
                return gon.f71290o0;
            case 1:
            case 5:
                return "center";
            case 2:
            case 8:
                return "end";
            case 3:
            case 4:
            case 9:
                return "justify";
            case 6:
                return "left";
            default:
                return "";
        }
    }

    public static String getLanguage(int i) {
        if (i == 1024) {
            return "";
        }
        if (i == 1033) {
            return "en-us";
        }
        if (i == 1049) {
            return "ru-ru";
        }
        if (i == 2057) {
            return "en-uk";
        }
        LOG.atWarn().log("Unknown or unmapped language code: {}", Unbox.box(i));
        return "";
    }

    public static String getListItemNumberLabel(int i, int i2) {
        if (i2 != 0) {
            LOG.atInfo().log("NYI: toListItemNumberLabel(): {}", Unbox.box(i2));
        }
        return String.valueOf(i);
    }

    public static String getOpacity(int i) {
        int i2 = (int) ((i & 4278190080L) >>> 24);
        if (i2 == 0 || i2 == 255) {
            return ".0";
        }
        return "" + (i2 / 255.0f);
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    public static HWPFDocumentCore loadDoc(DirectoryNode directoryNode) throws IOException {
        try {
            return new HWPFDocument(directoryNode);
        } catch (OldWordFileFormatException unused) {
            return new HWPFOldDocument(directoryNode);
        }
    }

    public static HWPFDocumentCore loadDoc(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            HWPFDocumentCore loadDoc = loadDoc(fileInputStream);
            fileInputStream.close();
            return loadDoc;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static HWPFDocumentCore loadDoc(InputStream inputStream) throws IOException {
        return loadDoc(HWPFDocumentCore.verifyAndBuildPOIFS(inputStream));
    }

    public static HWPFDocumentCore loadDoc(POIFSFileSystem pOIFSFileSystem) throws IOException {
        return loadDoc(pOIFSFileSystem.getRoot());
    }
}
