package org.apache.poi.hsmf.extractor;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.hsmf.MAPIMessage;
import org.apache.poi.hsmf.datatypes.AttachmentChunks;
import org.apache.poi.hsmf.datatypes.StringChunk;
import org.apache.poi.hsmf.exceptions.ChunkNotFoundException;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class OutlookTextExtractor implements POIOLE2TextExtractor {
    private boolean doCloseFilesystem;
    private final MAPIMessage msg;

    public OutlookTextExtractor(MAPIMessage mAPIMessage) {
        this.doCloseFilesystem = true;
        this.msg = mAPIMessage;
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            System.err.println("Usage: OutlookTextExtractor <file> [<file> ...]");
            System.exit(1);
        }
        for (String str : strArr) {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(new File(str));
            try {
                OutlookTextExtractor outlookTextExtractor = new OutlookTextExtractor(pOIFSFileSystem);
                try {
                    System.out.println(outlookTextExtractor.getText());
                    outlookTextExtractor.close();
                    pOIFSFileSystem.close();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        pOIFSFileSystem.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    public MAPIMessage getMAPIMessage() {
        return this.msg;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        Iterator<String> emptyIterator;
        StringBuilder sb = new StringBuilder();
        this.msg.guess7BitEncoding();
        try {
            emptyIterator = Arrays.asList(this.msg.getRecipientEmailAddressList()).iterator();
        } catch (ChunkNotFoundException unused) {
            emptyIterator = Collections.emptyIterator();
        }
        try {
            sb.append("From: ");
            sb.append(this.msg.getDisplayFrom());
            sb.append("\n");
        } catch (ChunkNotFoundException unused2) {
        }
        try {
            handleEmails(sb, "To", this.msg.getDisplayTo(), emptyIterator);
        } catch (ChunkNotFoundException unused3) {
        }
        try {
            handleEmails(sb, "CC", this.msg.getDisplayCC(), emptyIterator);
        } catch (ChunkNotFoundException unused4) {
        }
        try {
            handleEmails(sb, "BCC", this.msg.getDisplayBCC(), emptyIterator);
        } catch (ChunkNotFoundException unused5) {
        }
        try {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss Z", Locale.ROOT);
                simpleDateFormat.setTimeZone(LocaleUtil.getUserTimeZone());
                sb.append("Date: ");
                sb.append(simpleDateFormat.format(this.msg.getMessageDate() == null ? new Date(0L) : this.msg.getMessageDate().getTime()));
                sb.append("\n");
            } catch (ChunkNotFoundException unused6) {
                for (String str : this.msg.getHeaders()) {
                    if (StringUtil.startsWithIgnoreCase(str, "date:")) {
                        sb.append("Date:");
                        sb.append((CharSequence) str, str.indexOf(58) + 1, str.length());
                        sb.append("\n");
                        break;
                    }
                }
            }
        } catch (ChunkNotFoundException unused7) {
        }
        try {
            sb.append("Subject: ");
            sb.append(this.msg.getSubject());
            sb.append("\n");
        } catch (ChunkNotFoundException unused8) {
        }
        for (AttachmentChunks attachmentChunks : this.msg.getAttachmentFiles()) {
            StringChunk attachLongFileName = attachmentChunks.getAttachLongFileName();
            if (attachLongFileName == null) {
                attachLongFileName = attachmentChunks.getAttachFileName();
            }
            String value = attachLongFileName == null ? null : attachLongFileName.getValue();
            if (attachmentChunks.getAttachMimeTag() != null && attachmentChunks.getAttachMimeTag().getValue() != null) {
                value = attachmentChunks.getAttachMimeTag().getValue() + CloudStorageConstants.OPERATION_EQUAL + value;
            }
            sb.append("Attachment: ");
            sb.append(value);
            sb.append("\n");
        }
        try {
            sb.append("\n");
            sb.append(this.msg.getTextBody());
            sb.append("\n");
        } catch (ChunkNotFoundException unused9) {
        }
        return sb.toString();
    }

    public void handleEmails(StringBuilder sb, String str, String str2, Iterator<String> it2) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        String[] split = str2.split(";\\s*");
        sb.append(str);
        sb.append(": ");
        boolean z = true;
        for (String str3 : split) {
            if (z) {
                z = false;
            } else {
                sb.append("; ");
            }
            sb.append(str3);
            if (it2.hasNext()) {
                String next = it2.next();
                if (!next.equals(str3)) {
                    sb.append(" <");
                    sb.append(next);
                    sb.append(">");
                }
            }
        }
        sb.append("\n");
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public MAPIMessage getFilesystem() {
        return this.msg;
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public MAPIMessage getDocument() {
        return this.msg;
    }

    public OutlookTextExtractor(DirectoryNode directoryNode) throws IOException {
        this(new MAPIMessage(directoryNode));
    }

    public OutlookTextExtractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(new MAPIMessage(pOIFSFileSystem));
    }

    public OutlookTextExtractor(InputStream inputStream) throws IOException {
        this(new MAPIMessage(inputStream));
    }
}
