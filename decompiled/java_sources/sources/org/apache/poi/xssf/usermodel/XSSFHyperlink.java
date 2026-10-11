package org.apache.poi.xssf.usermodel;

import androidx.core.net.MailTo;
import com.onyx.android.sdk.base.common.CommonConstant;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink;

/* loaded from: classes13.dex */
public class XSSFHyperlink implements Hyperlink, Duplicatable {
    private final CTHyperlink _ctHyperlink;
    private final PackageRelationship _externalRel;
    private String _location;
    private final HyperlinkType _type;

    /* renamed from: org.apache.poi.xssf.usermodel.XSSFHyperlink$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199631 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType;

        static {
            int[] iArr = new int[HyperlinkType.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType = iArr;
            try {
                iArr[HyperlinkType.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.FILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public XSSFHyperlink(HyperlinkType hyperlinkType) {
        this._type = hyperlinkType;
        this._ctHyperlink = CTHyperlink.Factory.newInstance();
        this._externalRel = null;
    }

    private CellReference buildCellReference(boolean z) {
        String ref = this._ctHyperlink.getRef();
        if (ref == null) {
            ref = "A1";
        }
        if (!ref.contains(":")) {
            return new CellReference(ref);
        }
        AreaReference areaReference = new AreaReference(ref, SpreadsheetVersion.EXCEL2007);
        return z ? areaReference.getLastCell() : areaReference.getFirstCell();
    }

    private CellReference buildFirstCellReference() {
        return buildCellReference(false);
    }

    private CellReference buildLastCellReference() {
        return buildCellReference(true);
    }

    private void setCellRange(String str) {
        AreaReference areaReference = new AreaReference(str, SpreadsheetVersion.EXCEL2007);
        if (areaReference.isSingleCell()) {
            setCellReference(areaReference.getFirstCell());
        } else {
            setCellReference(areaReference.formatAsString());
        }
    }

    private void validate(String str) {
        int i = C199631.$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[this._type.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            try {
                new URI(str);
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException("Address of hyperlink must be a valid URI", e);
            }
        } else {
            if (i == 4) {
                return;
            }
            throw new IllegalStateException("Invalid Hyperlink type: " + this._type);
        }
    }

    @Override // org.apache.poi.common.Duplicatable
    public Duplicatable copy() {
        return new XSSFHyperlink(this);
    }

    public void generateRelationIfNeeded(PackagePart packagePart) {
        if (this._externalRel == null && needsRelationToo()) {
            this._ctHyperlink.setId(packagePart.addExternalRelationship(this._location, XSSFRelation.SHEET_HYPERLINKS.getRelation()).getId());
        }
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public String getAddress() {
        return this._location;
    }

    @Internal
    public CTHyperlink getCTHyperlink() {
        return this._ctHyperlink;
    }

    public String getCellRef() {
        return this._ctHyperlink.getRef();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getFirstColumn() {
        return buildFirstCellReference().getCol();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getFirstRow() {
        return buildFirstCellReference().getRow();
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public String getLabel() {
        return this._ctHyperlink.getDisplay();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getLastColumn() {
        return buildLastCellReference().getCol();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getLastRow() {
        return buildLastCellReference().getRow();
    }

    public String getLocation() {
        return this._ctHyperlink.getLocation();
    }

    public String getTooltip() {
        return this._ctHyperlink.getTooltip();
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public HyperlinkType getType() {
        return this._type;
    }

    public boolean needsRelationToo() {
        return this._type != HyperlinkType.DOCUMENT;
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public void setAddress(String str) {
        validate(str);
        this._location = str;
        if (this._type == HyperlinkType.DOCUMENT) {
            setLocation(str);
        }
    }

    @Internal
    public void setCellReference(String str) {
        this._ctHyperlink.setRef(str);
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setFirstColumn(int i) {
        int lastColumn = getLastColumn();
        if (i > lastColumn) {
            lastColumn = i;
        }
        setCellRange((CellReference.convertNumToColString(i) + (getFirstRow() + 1)) + ":" + (CellReference.convertNumToColString(lastColumn) + (getLastRow() + 1)));
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setFirstRow(int i) {
        int lastRow = getLastRow();
        if (i > lastRow) {
            lastRow = i;
        }
        setCellRange((CellReference.convertNumToColString(getFirstColumn()) + (i + 1)) + ":" + (CellReference.convertNumToColString(getLastColumn()) + (lastRow + 1)));
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public void setLabel(String str) {
        this._ctHyperlink.setDisplay(str);
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setLastColumn(int i) {
        int firstColumn = getFirstColumn();
        if (i < firstColumn) {
            firstColumn = i;
        }
        setCellRange((CellReference.convertNumToColString(firstColumn) + (getFirstRow() + 1)) + ":" + (CellReference.convertNumToColString(i) + (getLastRow() + 1)));
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setLastRow(int i) {
        int firstRow = getFirstRow();
        if (i < firstRow) {
            firstRow = i;
        }
        setCellRange((CellReference.convertNumToColString(getFirstColumn()) + (firstRow + 1)) + ":" + (CellReference.convertNumToColString(getLastColumn()) + (i + 1)));
    }

    public void setLocation(String str) {
        this._ctHyperlink.setLocation(str);
    }

    public void setTooltip(String str) {
        this._ctHyperlink.setTooltip(str);
    }

    @Internal
    public void setCellReference(CellReference cellReference) {
        setCellReference(cellReference.formatAsString());
    }

    public XSSFHyperlink(CTHyperlink cTHyperlink, PackageRelationship packageRelationship) {
        this._ctHyperlink = cTHyperlink;
        this._externalRel = packageRelationship;
        if (packageRelationship == null) {
            if (cTHyperlink.getLocation() != null) {
                this._type = HyperlinkType.DOCUMENT;
                this._location = cTHyperlink.getLocation();
                return;
            } else {
                if (cTHyperlink.getId() == null) {
                    this._type = HyperlinkType.DOCUMENT;
                    return;
                }
                throw new IllegalStateException("The hyperlink for cell " + cTHyperlink.getRef() + " references relation " + cTHyperlink.getId() + ", but that didn't exist!");
            }
        }
        this._location = packageRelationship.getTargetURI().toString();
        if (cTHyperlink.getLocation() != null) {
            this._location += "#" + cTHyperlink.getLocation();
        }
        if (!this._location.startsWith(CommonConstant.SCHEME_HTTP) && !this._location.startsWith(CommonConstant.SCHEME_HTTPS) && !this._location.startsWith("ftp://")) {
            if (this._location.startsWith(MailTo.MAILTO_SCHEME)) {
                this._type = HyperlinkType.EMAIL;
                return;
            } else {
                this._type = HyperlinkType.FILE;
                return;
            }
        }
        this._type = HyperlinkType.URL;
    }

    @Internal
    public XSSFHyperlink(Hyperlink hyperlink) {
        if (hyperlink instanceof XSSFHyperlink) {
            XSSFHyperlink xSSFHyperlink = (XSSFHyperlink) hyperlink;
            this._type = xSSFHyperlink.getType();
            this._location = xSSFHyperlink._location;
            this._externalRel = xSSFHyperlink._externalRel;
            this._ctHyperlink = (CTHyperlink) xSSFHyperlink._ctHyperlink.copy();
            return;
        }
        this._type = hyperlink.getType();
        this._location = hyperlink.getAddress();
        this._externalRel = null;
        CTHyperlink newInstance = CTHyperlink.Factory.newInstance();
        this._ctHyperlink = newInstance;
        newInstance.setDisplay(hyperlink.getLabel());
        setFirstColumn(hyperlink.getFirstColumn());
        setLastColumn(hyperlink.getLastColumn());
        setFirstRow(hyperlink.getFirstRow());
        setLastRow(hyperlink.getLastRow());
    }
}
