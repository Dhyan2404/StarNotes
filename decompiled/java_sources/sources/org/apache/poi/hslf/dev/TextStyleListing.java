package org.apache.poi.hslf.dev;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.PrintStream;
import java.util.List;
import org.apache.poi.hslf.model.textproperties.BitMaskTextProp;
import org.apache.poi.hslf.model.textproperties.TextProp;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.record.StyleTextPropAtom;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;

/* loaded from: classes12.dex */
public final class TextStyleListing {
    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Need to give a filename");
            System.exit(1);
        }
        HSLFSlideShowImpl hSLFSlideShowImpl = new HSLFSlideShowImpl(strArr[0]);
        try {
            for (Record record : hSLFSlideShowImpl.getRecords()) {
                if (record.getRecordType() == 1000) {
                    for (Record record2 : record.getChildRecords()) {
                        if (record2 instanceof SlideListWithText) {
                            int i = -1;
                            for (Record record3 : record2.getChildRecords()) {
                                if (record3 instanceof TextCharsAtom) {
                                    i = ((TextCharsAtom) record3).getText().length();
                                }
                                if (record3 instanceof TextBytesAtom) {
                                    i = ((TextBytesAtom) record3).getText().length();
                                }
                                if (record3 instanceof StyleTextPropAtom) {
                                    StyleTextPropAtom styleTextPropAtom = (StyleTextPropAtom) record3;
                                    styleTextPropAtom.setParentTextSize(i);
                                    showStyleTextPropAtom(styleTextPropAtom);
                                }
                            }
                        }
                    }
                }
            }
            hSLFSlideShowImpl.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    hSLFSlideShowImpl.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void showStyleTextPropAtom(StyleTextPropAtom styleTextPropAtom) {
        System.out.println("\nFound a StyleTextPropAtom");
        List<TextPropCollection> paragraphStyles = styleTextPropAtom.getParagraphStyles();
        System.out.println("Contains " + paragraphStyles.size() + " paragraph styles:");
        for (int i = 0; i < paragraphStyles.size(); i++) {
            TextPropCollection textPropCollection = paragraphStyles.get(i);
            System.out.println(" In paragraph styling " + i + ":");
            System.out.println("  Characters covered is " + textPropCollection.getCharactersCovered());
            showTextProps(textPropCollection);
        }
        List<TextPropCollection> characterStyles = styleTextPropAtom.getCharacterStyles();
        System.out.println("Contains " + characterStyles.size() + " character styles:");
        for (int i2 = 0; i2 < characterStyles.size(); i2++) {
            TextPropCollection textPropCollection2 = characterStyles.get(i2);
            System.out.println("  In character styling " + i2 + ":");
            System.out.println("    Characters covered is " + textPropCollection2.getCharactersCovered());
            showTextProps(textPropCollection2);
        }
    }

    public static void showTextProps(TextPropCollection textPropCollection) {
        List<TextProp> textPropList = textPropCollection.getTextPropList();
        System.out.println("    Contains " + textPropList.size() + " TextProps");
        for (int i = 0; i < textPropList.size(); i++) {
            TextProp textProp = textPropList.get(i);
            System.out.println("      " + i + " - " + textProp.getName());
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("          = ");
            sb.append(textProp.getValue());
            printStream.println(sb.toString());
            System.out.println("          @ " + textProp.getMask());
            if (textProp instanceof BitMaskTextProp) {
                BitMaskTextProp bitMaskTextProp = (BitMaskTextProp) textProp;
                String[] subPropNames = bitMaskTextProp.getSubPropNames();
                boolean[] subPropMatches = bitMaskTextProp.getSubPropMatches();
                for (int i2 = 0; i2 < subPropNames.length; i2++) {
                    System.out.println("            -> " + i2 + " - " + subPropNames[i2]);
                    System.out.println("               " + i2 + CloudStorageConstants.OPERATION_EQUAL + subPropMatches[i2]);
                }
            }
        }
    }
}
