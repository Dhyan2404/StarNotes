package org.apache.poi.hmef.extractor;

import com.onyx.galaxy.note.utils.LogcatGenerator;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.poi.hmef.Attachment;
import org.apache.poi.hmef.HMEFMessage;
import org.apache.poi.hmef.attribute.MAPIAttribute;
import org.apache.poi.hmef.attribute.MAPIRtfAttribute;
import org.apache.poi.hmef.attribute.MAPIStringAttribute;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class HMEFContentsExtractor {
    private final HMEFMessage message;

    public HMEFContentsExtractor(File file) throws IOException {
        this(new HMEFMessage(new FileInputStream(file)));
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 2) {
            System.err.println("Use:");
            System.err.println("  HMEFContentsExtractor <filename> <output dir>");
            System.err.println();
            System.err.println();
            System.err.println("Where <filename> is the winmail.dat file to extract,");
            System.err.println(" and <output dir> is where to place the extracted files");
            System.exit(2);
        }
        String str = strArr[0];
        String str2 = strArr[1];
        HMEFContentsExtractor hMEFContentsExtractor = new HMEFContentsExtractor(new File(str));
        File file = new File(str2);
        File file2 = new File(file, "message.rtf");
        if (file.exists()) {
            System.out.println("Extracting...");
            hMEFContentsExtractor.extractMessageBody(file2);
            hMEFContentsExtractor.extractAttachments(file);
            System.out.println("Extraction completed");
            return;
        }
        throw new FileNotFoundException("Output directory " + file.getName() + " not found");
    }

    public void extractAttachments(File file) throws IOException {
        int i = 0;
        for (Attachment attachment : this.message.getAttachments()) {
            i++;
            String longFilename = attachment.getLongFilename();
            if (longFilename == null || longFilename.length() == 0) {
                longFilename = attachment.getFilename();
            }
            if (longFilename == null || longFilename.length() == 0) {
                longFilename = "attachment" + i;
                if (attachment.getExtension() != null) {
                    longFilename = longFilename + attachment.getExtension();
                }
            }
            FileOutputStream fileOutputStream = new FileOutputStream(new File(file, longFilename));
            try {
                fileOutputStream.write(attachment.getContents());
                fileOutputStream.close();
            } finally {
            }
        }
    }

    public void extractMessageBody(File file) throws IOException {
        MAPIAttribute bodyAttribute = getBodyAttribute();
        if (bodyAttribute == null) {
            System.err.println("No message body found, " + file + " not created");
            return;
        }
        if (bodyAttribute instanceof MAPIStringAttribute) {
            String file2 = file.toString();
            if (file2.endsWith(".rtf")) {
                file2 = file2.substring(0, file2.length() - 4);
            }
            file = new File(file2 + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION);
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            if (bodyAttribute instanceof MAPIStringAttribute) {
                fileOutputStream.write(((MAPIStringAttribute) bodyAttribute).getDataString().getBytes(StringUtil.UTF8));
            } else {
                fileOutputStream.write(bodyAttribute.getData());
            }
            fileOutputStream.close();
        } finally {
        }
    }

    public MAPIAttribute getBodyAttribute() {
        MAPIAttribute messageMAPIAttribute = this.message.getMessageMAPIAttribute(MAPIProperty.RTF_COMPRESSED);
        if (messageMAPIAttribute != null) {
            return messageMAPIAttribute;
        }
        return this.message.getMessageMAPIAttribute(MAPIProperty.createCustom(16345, Types.ASCII_STRING, "Uncompressed Body"));
    }

    public HMEFContentsExtractor(HMEFMessage hMEFMessage) {
        this.message = hMEFMessage;
    }

    public void extractMessageBody(OutputStream outputStream) throws IOException {
        MAPIRtfAttribute mAPIRtfAttribute = (MAPIRtfAttribute) this.message.getMessageMAPIAttribute(MAPIProperty.RTF_COMPRESSED);
        if (mAPIRtfAttribute != null) {
            outputStream.write(mAPIRtfAttribute.getData());
        }
    }
}
