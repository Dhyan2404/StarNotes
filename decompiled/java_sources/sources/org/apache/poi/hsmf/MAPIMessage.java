package org.apache.poi.hsmf;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.POIReadOnlyDocument;
import org.apache.poi.hmef.attribute.MAPIRtfAttribute;
import org.apache.poi.hsmf.datatypes.AttachmentChunks;
import org.apache.poi.hsmf.datatypes.ByteChunk;
import org.apache.poi.hsmf.datatypes.Chunk;
import org.apache.poi.hsmf.datatypes.ChunkGroup;
import org.apache.poi.hsmf.datatypes.Chunks;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.hsmf.datatypes.NameIdChunks;
import org.apache.poi.hsmf.datatypes.PropertyValue;
import org.apache.poi.hsmf.datatypes.RecipientChunks;
import org.apache.poi.hsmf.datatypes.StringChunk;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.hsmf.exceptions.ChunkNotFoundException;
import org.apache.poi.hsmf.parsers.POIFSChunkParser;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.CodePageUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class MAPIMessage extends POIReadOnlyDocument {
    private AttachmentChunks[] attachmentChunks;
    private Chunks mainChunks;
    private NameIdChunks nameIdChunks;
    private RecipientChunks[] recipientChunks;
    private boolean returnNullOnMissingChunk;
    private static final Logger LOG = LogManager.getLogger((Class<?>) MAPIMessage.class);
    private static final Pattern GUESS_7_BIT_ENCODING_PATTERN = Pattern.compile("content-type:.*?charset=[\"']?([^;'\"]+)[\"']?", 2);

    /* loaded from: classes12.dex */
    public enum MESSAGE_CLASS {
        APPOINTMENT,
        CONTACT,
        NOTE,
        POST,
        STICKY_NOTE,
        TASK,
        UNKNOWN,
        UNSPECIFIED
    }

    public MAPIMessage() {
        super(new POIFSFileSystem());
    }

    private String toSemicolonList(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : strArr) {
            if (str != null) {
                if (z) {
                    z = false;
                } else {
                    sb.append("; ");
                }
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public AttachmentChunks[] getAttachmentFiles() {
        return this.attachmentChunks;
    }

    public String getConversationTopic() throws ChunkNotFoundException {
        return getStringFromChunk(this.mainChunks.getConversationTopic());
    }

    public String getDisplayBCC() throws ChunkNotFoundException {
        return getStringFromChunk(this.mainChunks.getDisplayBCCChunk());
    }

    public String getDisplayCC() throws ChunkNotFoundException {
        return getStringFromChunk(this.mainChunks.getDisplayCCChunk());
    }

    public String getDisplayFrom() throws ChunkNotFoundException {
        return getStringFromChunk(this.mainChunks.getDisplayFromChunk());
    }

    public String getDisplayTo() throws ChunkNotFoundException {
        return getStringFromChunk(this.mainChunks.getDisplayToChunk());
    }

    public String[] getHeaders() throws ChunkNotFoundException {
        String stringFromChunk = getStringFromChunk(this.mainChunks.getMessageHeaders());
        if (stringFromChunk == null) {
            return null;
        }
        return stringFromChunk.split("\\r?\\n");
    }

    public String getHtmlBody() throws ChunkNotFoundException {
        ByteChunk htmlBodyChunkBinary = this.mainChunks.getHtmlBodyChunkBinary();
        if (htmlBodyChunkBinary == null) {
            return getStringFromChunk(this.mainChunks.getHtmlBodyChunkString());
        }
        List<PropertyValue> list = this.mainChunks.getProperties().get(MAPIProperty.INTERNET_CPID);
        if (list != null && !list.isEmpty()) {
            int intValue = ((PropertyValue.LongPropertyValue) list.get(0)).getValue().intValue();
            try {
                return new String(htmlBodyChunkBinary.getValue(), CodePageUtil.codepageToEncoding(intValue, true));
            } catch (UnsupportedEncodingException unused) {
                LOG.atWarn().log("HTML body binary: Invalid codepage ID {} set for the message via {}, ignoring", Unbox.box(intValue), MAPIProperty.INTERNET_CPID);
            }
        }
        return htmlBodyChunkBinary.getAs7bitString();
    }

    public Chunks getMainChunks() {
        return this.mainChunks;
    }

    public MESSAGE_CLASS getMessageClassEnum() throws ChunkNotFoundException {
        String stringFromChunk = getStringFromChunk(this.mainChunks.getMessageClass());
        if (StringUtil.isBlank(stringFromChunk)) {
            return MESSAGE_CLASS.UNSPECIFIED;
        }
        if (stringFromChunk.equalsIgnoreCase("IPM.Note")) {
            return MESSAGE_CLASS.NOTE;
        }
        if (stringFromChunk.equalsIgnoreCase("IPM.Contact")) {
            return MESSAGE_CLASS.CONTACT;
        }
        if (stringFromChunk.equalsIgnoreCase("IPM.Appointment")) {
            return MESSAGE_CLASS.APPOINTMENT;
        }
        if (stringFromChunk.equalsIgnoreCase("IPM.StickyNote")) {
            return MESSAGE_CLASS.STICKY_NOTE;
        }
        if (stringFromChunk.equalsIgnoreCase("IPM.Task")) {
            return MESSAGE_CLASS.TASK;
        }
        if (stringFromChunk.equalsIgnoreCase("IPM.Post")) {
            return MESSAGE_CLASS.POST;
        }
        LOG.atWarn().log("I don't recognize message class '{}'. Please open an issue on POI's bugzilla", stringFromChunk);
        return MESSAGE_CLASS.UNKNOWN;
    }

    public Calendar getMessageDate() throws ChunkNotFoundException {
        if (this.mainChunks.getSubmissionChunk() != null) {
            return this.mainChunks.getSubmissionChunk().getAcceptedAtTime();
        }
        MAPIProperty[] mAPIPropertyArr = {MAPIProperty.CLIENT_SUBMIT_TIME, MAPIProperty.LAST_MODIFICATION_TIME, MAPIProperty.CREATION_TIME};
        for (int i = 0; i < 3; i++) {
            List<PropertyValue> list = this.mainChunks.getProperties().get(mAPIPropertyArr[i]);
            if (list != null && !list.isEmpty()) {
                return ((PropertyValue.TimePropertyValue) list.get(0)).getValue();
            }
        }
        if (this.returnNullOnMissingChunk) {
            return null;
        }
        throw new ChunkNotFoundException();
    }

    public NameIdChunks getNameIdChunks() {
        return this.nameIdChunks;
    }

    public RecipientChunks[] getRecipientDetailsChunks() {
        return this.recipientChunks;
    }

    public String getRecipientEmailAddress() throws ChunkNotFoundException {
        return toSemicolonList(getRecipientEmailAddressList());
    }

    public String[] getRecipientEmailAddressList() throws ChunkNotFoundException {
        RecipientChunks[] recipientChunksArr = this.recipientChunks;
        if (recipientChunksArr == null || recipientChunksArr.length == 0) {
            throw new ChunkNotFoundException("No recipients section present");
        }
        int length = recipientChunksArr.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            String recipientEmailAddress = this.recipientChunks[i].getRecipientEmailAddress();
            if (recipientEmailAddress != null) {
                strArr[i] = recipientEmailAddress;
            } else {
                if (!this.returnNullOnMissingChunk) {
                    throw new ChunkNotFoundException("No email address holding chunks found for the " + (i + 1) + "th recipient");
                }
                strArr[i] = null;
            }
        }
        return strArr;
    }

    public String getRecipientNames() throws ChunkNotFoundException {
        return toSemicolonList(getRecipientNamesList());
    }

    public String[] getRecipientNamesList() throws ChunkNotFoundException {
        RecipientChunks[] recipientChunksArr = this.recipientChunks;
        if (recipientChunksArr == null || recipientChunksArr.length == 0) {
            throw new ChunkNotFoundException("No recipients section present");
        }
        int length = recipientChunksArr.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            String recipientName = this.recipientChunks[i].getRecipientName();
            if (recipientName == null) {
                throw new ChunkNotFoundException("No display name holding chunks found for the " + (i + 1) + "th recipient");
            }
            strArr[i] = recipientName;
        }
        return strArr;
    }

    public String getRtfBody() throws ChunkNotFoundException {
        ByteChunk rtfBodyChunk = this.mainChunks.getRtfBodyChunk();
        if (rtfBodyChunk == null) {
            if (this.returnNullOnMissingChunk) {
                return null;
            }
            throw new ChunkNotFoundException();
        }
        try {
            return new MAPIRtfAttribute(MAPIProperty.RTF_COMPRESSED, Types.BINARY.getId(), rtfBodyChunk.getValue()).getDataString();
        } catch (IOException e) {
            throw new IllegalStateException("Shouldn't happen", e);
        }
    }

    public String getStringFromChunk(StringChunk stringChunk) throws ChunkNotFoundException {
        if (stringChunk != null) {
            return stringChunk.getValue();
        }
        if (this.returnNullOnMissingChunk) {
            return null;
        }
        throw new ChunkNotFoundException();
    }

    public String getSubject() throws ChunkNotFoundException {
        return getStringFromChunk(this.mainChunks.getSubjectChunk());
    }

    public String getTextBody() throws ChunkNotFoundException {
        return getStringFromChunk(this.mainChunks.getTextBodyChunk());
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void guess7BitEncoding() {
        /*
            r11 = this;
            org.apache.poi.hsmf.datatypes.Chunks r0 = r11.mainChunks
            java.util.Map r0 = r0.getProperties()
            org.apache.poi.hsmf.datatypes.MAPIProperty r1 = org.apache.poi.hsmf.datatypes.MAPIProperty.MESSAGE_CODEPAGE
            java.lang.Object r0 = r0.get(r1)
            java.util.List r0 = (java.util.List) r0
            java.lang.String r1 = "Invalid codepage ID {} set for the message via {}, ignoring"
            r2 = 0
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L3d
            boolean r5 = r0.isEmpty()
            if (r5 != 0) goto L3d
            java.lang.Object r0 = r0.get(r2)
            org.apache.poi.hsmf.datatypes.PropertyValue$LongPropertyValue r0 = (org.apache.poi.hsmf.datatypes.PropertyValue.LongPropertyValue) r0
            java.lang.Integer r0 = r0.getValue()
            int r0 = r0.intValue()
            java.lang.String r0 = org.apache.poi.util.CodePageUtil.codepageToEncoding(r0, r3)     // Catch: java.io.UnsupportedEncodingException -> L2e
            goto L3e
        L2e:
            org.apache.logging.log4j.Logger r5 = org.apache.poi.hsmf.MAPIMessage.LOG
            org.apache.logging.log4j.LogBuilder r5 = r5.atWarn()
            java.lang.StringBuilder r0 = org.apache.logging.log4j.util.Unbox.box(r0)
            org.apache.poi.hsmf.datatypes.MAPIProperty r6 = org.apache.poi.hsmf.datatypes.MAPIProperty.MESSAGE_CODEPAGE
            r5.log(r1, r0, r6)
        L3d:
            r0 = r4
        L3e:
            if (r0 != 0) goto L84
            org.apache.poi.hsmf.datatypes.Chunks r5 = r11.mainChunks
            java.util.Map r5 = r5.getProperties()
            org.apache.poi.hsmf.datatypes.MAPIProperty r6 = org.apache.poi.hsmf.datatypes.MAPIProperty.MESSAGE_LOCALE_ID
            java.lang.Object r5 = r5.get(r6)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L84
            boolean r6 = r5.isEmpty()
            if (r6 != 0) goto L84
            java.lang.Object r5 = r5.get(r2)
            org.apache.poi.hsmf.datatypes.PropertyValue$LongPropertyValue r5 = (org.apache.poi.hsmf.datatypes.PropertyValue.LongPropertyValue) r5
            java.lang.Integer r5 = r5.getValue()
            int r5 = r5.intValue()
            int r6 = org.apache.poi.util.LocaleUtil.getDefaultCodePageFromLCID(r5)
            if (r6 == 0) goto L84
            java.lang.String r0 = org.apache.poi.util.CodePageUtil.codepageToEncoding(r6, r3)     // Catch: java.io.UnsupportedEncodingException -> L6f
            goto L84
        L6f:
            org.apache.logging.log4j.Logger r7 = org.apache.poi.hsmf.MAPIMessage.LOG
            org.apache.logging.log4j.LogBuilder r7 = r7.atWarn()
            java.lang.StringBuilder r6 = org.apache.logging.log4j.util.Unbox.box(r6)
            java.lang.StringBuilder r5 = org.apache.logging.log4j.util.Unbox.box(r5)
            org.apache.poi.hsmf.datatypes.MAPIProperty r8 = org.apache.poi.hsmf.datatypes.MAPIProperty.MESSAGE_LOCALE_ID
            java.lang.String r9 = "Invalid codepage ID {}from locale ID{} set for the message via {}, ignoring"
            r7.log(r9, r6, r5, r8)
        L84:
            if (r0 != 0) goto Lb8
            java.lang.String[] r5 = r11.getHeaders()     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            if (r5 == 0) goto Lb8
            int r6 = r5.length     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            if (r6 <= 0) goto Lb8
            int r6 = r5.length     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            r7 = r2
        L91:
            if (r7 >= r6) goto Lb8
            r8 = r5[r7]     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            java.util.Locale r9 = org.apache.poi.util.LocaleUtil.getUserLocale()     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            java.lang.String r9 = r8.toLowerCase(r9)     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            java.lang.String r10 = "content-type"
            boolean r9 = r9.startsWith(r10)     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            if (r9 == 0) goto Lb5
            java.util.regex.Pattern r9 = org.apache.poi.hsmf.MAPIMessage.GUESS_7_BIT_ENCODING_PATTERN     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            java.util.regex.Matcher r8 = r9.matcher(r8)     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            boolean r9 = r8.matches()     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
            if (r9 == 0) goto Lb5
            java.lang.String r0 = r8.group(r3)     // Catch: org.apache.poi.hsmf.exceptions.ChunkNotFoundException -> Lb8
        Lb5:
            int r7 = r7 + 1
            goto L91
        Lb8:
            org.apache.poi.hsmf.datatypes.Chunks r5 = r11.mainChunks
            java.util.Map r5 = r5.getProperties()
            org.apache.poi.hsmf.datatypes.MAPIProperty r6 = org.apache.poi.hsmf.datatypes.MAPIProperty.INTERNET_CPID
            java.lang.Object r5 = r5.get(r6)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto Lfd
            boolean r6 = r5.isEmpty()
            if (r6 != 0) goto Lfd
            java.lang.Object r2 = r5.get(r2)
            org.apache.poi.hsmf.datatypes.PropertyValue$LongPropertyValue r2 = (org.apache.poi.hsmf.datatypes.PropertyValue.LongPropertyValue) r2
            java.lang.Integer r2 = r2.getValue()
            int r2 = r2.intValue()
            java.lang.String r3 = org.apache.poi.util.CodePageUtil.codepageToEncoding(r2, r3)     // Catch: java.io.UnsupportedEncodingException -> Lea
            java.lang.String r5 = "utf-8"
            boolean r1 = r3.equalsIgnoreCase(r5)     // Catch: java.io.UnsupportedEncodingException -> Leb
            if (r1 != 0) goto Lfa
            r4 = r3
            goto Lfa
        Lea:
            r3 = r4
        Leb:
            org.apache.logging.log4j.Logger r5 = org.apache.poi.hsmf.MAPIMessage.LOG
            org.apache.logging.log4j.LogBuilder r5 = r5.atWarn()
            java.lang.StringBuilder r2 = org.apache.logging.log4j.util.Unbox.box(r2)
            org.apache.poi.hsmf.datatypes.MAPIProperty r6 = org.apache.poi.hsmf.datatypes.MAPIProperty.INTERNET_CPID
            r5.log(r1, r2, r6)
        Lfa:
            r1 = r4
            r4 = r3
            goto Lfe
        Lfd:
            r1 = r4
        Lfe:
            r11.set7BitEncoding(r0, r4, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hsmf.MAPIMessage.guess7BitEncoding():void");
    }

    public boolean has7BitEncodingStrings() {
        for (Chunk chunk : this.mainChunks.getChunks()) {
            if ((chunk instanceof StringChunk) && chunk.getType() == Types.ASCII_STRING) {
                return true;
            }
        }
        NameIdChunks nameIdChunks = this.nameIdChunks;
        if (nameIdChunks != null) {
            for (Chunk chunk2 : nameIdChunks.getChunks()) {
                if ((chunk2 instanceof StringChunk) && chunk2.getType() == Types.ASCII_STRING) {
                    return true;
                }
            }
        }
        for (RecipientChunks recipientChunks : this.recipientChunks) {
            for (Chunk chunk3 : recipientChunks.getAll()) {
                if ((chunk3 instanceof StringChunk) && chunk3.getType() == Types.ASCII_STRING) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isReturnNullOnMissingChunk() {
        return this.returnNullOnMissingChunk;
    }

    public void set7BitEncoding(String str) {
        set7BitEncoding(str, str, str);
    }

    public void setReturnNullOnMissingChunk(boolean z) {
        this.returnNullOnMissingChunk = z;
    }

    public MAPIMessage(String str) throws IOException {
        this(new File(str));
    }

    public void set7BitEncoding(String str, String str2, String str3) {
        for (Chunk chunk : this.mainChunks.getChunks()) {
            if (chunk instanceof StringChunk) {
                if (chunk.getChunkId() == MAPIProperty.BODY_HTML.f111389id) {
                    if (str2 != null) {
                        ((StringChunk) chunk).set7BitEncoding(str2);
                    }
                } else if (chunk.getChunkId() == MAPIProperty.BODY.f111389id) {
                    if (str3 != null) {
                        ((StringChunk) chunk).set7BitEncoding(str3);
                    }
                } else if (str != null) {
                    ((StringChunk) chunk).set7BitEncoding(str);
                }
            }
        }
        if (str != null) {
            NameIdChunks nameIdChunks = this.nameIdChunks;
            if (nameIdChunks != null) {
                for (Chunk chunk2 : nameIdChunks.getChunks()) {
                    if (chunk2 instanceof StringChunk) {
                        ((StringChunk) chunk2).set7BitEncoding(str);
                    }
                }
            }
            for (RecipientChunks recipientChunks : this.recipientChunks) {
                for (Chunk chunk3 : recipientChunks.getAll()) {
                    if (chunk3 instanceof StringChunk) {
                        ((StringChunk) chunk3).set7BitEncoding(str);
                    }
                }
            }
        }
    }

    public MAPIMessage(File file) throws IOException {
        this(new POIFSFileSystem(file));
    }

    public MAPIMessage(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }

    public MAPIMessage(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    public MAPIMessage(DirectoryNode directoryNode) throws IOException {
        super(directoryNode);
        ChunkGroup[] parse = POIFSChunkParser.parse(directoryNode);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ChunkGroup chunkGroup : parse) {
            if (chunkGroup instanceof Chunks) {
                this.mainChunks = (Chunks) chunkGroup;
            } else if (chunkGroup instanceof NameIdChunks) {
                this.nameIdChunks = (NameIdChunks) chunkGroup;
            } else if (chunkGroup instanceof RecipientChunks) {
                arrayList2.add((RecipientChunks) chunkGroup);
            }
            if (chunkGroup instanceof AttachmentChunks) {
                arrayList.add((AttachmentChunks) chunkGroup);
            }
        }
        this.attachmentChunks = (AttachmentChunks[]) arrayList.toArray(new AttachmentChunks[0]);
        this.recipientChunks = (RecipientChunks[]) arrayList2.toArray(new RecipientChunks[0]);
        Arrays.sort(this.attachmentChunks, new AttachmentChunks.AttachmentChunksSorter());
        Arrays.sort(this.recipientChunks, new RecipientChunks.RecipientChunksSorter());
    }
}
