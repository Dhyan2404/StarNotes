package org.apache.poi.ooxml.extractor;

import java.io.File;
import org.apache.poi.extractor.ExtractorFactory;
import org.apache.poi.extractor.POITextExtractor;

/* loaded from: classes12.dex */
public final class CommandLineTextExtractor {
    public static final String DIVIDER = "=======================";

    private CommandLineTextExtractor() {
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 1) {
            System.err.println("Use:");
            System.err.println("   CommandLineTextExtractor <filename> [filename] [filename]");
            System.exit(1);
        }
        for (String str : strArr) {
            System.out.println(DIVIDER);
            File file = new File(str);
            System.out.println(file);
            POITextExtractor createExtractor = ExtractorFactory.createExtractor(file);
            try {
                POITextExtractor metadataTextExtractor = createExtractor.getMetadataTextExtractor();
                System.out.println("   =======================");
                String text = metadataTextExtractor.getText();
                System.out.println(text);
                System.out.println("   =======================");
                String text2 = createExtractor.getText();
                System.out.println(text2);
                System.out.println(DIVIDER);
                System.out.println("Had " + text.length() + " characters of metadata and " + text2.length() + " characters of text");
                createExtractor.close();
            } finally {
            }
        }
    }
}
