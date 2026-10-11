package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileLogInfo;
import com.dropbox.core.p006v2.teamlog.FolderLogInfo;
import com.dropbox.core.p006v2.teamlog.PaperDocumentLogInfo;
import com.dropbox.core.p006v2.teamlog.PaperFolderLogInfo;
import com.dropbox.core.p006v2.teamlog.ShowcaseDocumentLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class AssetLogInfo {
    public static final AssetLogInfo OTHER = new AssetLogInfo().m13111f(Tag.OTHER);

    /* renamed from: a */
    public Tag f18749a;

    /* renamed from: b */
    public FileLogInfo f18750b;

    /* renamed from: c */
    public FolderLogInfo f18751c;

    /* renamed from: d */
    public PaperDocumentLogInfo f18752d;

    /* renamed from: e */
    public PaperFolderLogInfo f18753e;

    /* renamed from: f */
    public ShowcaseDocumentLogInfo f18754f;

    /* loaded from: classes4.dex */
    public enum Tag {
        FILE,
        FOLDER,
        PAPER_DOCUMENT,
        PAPER_FOLDER,
        SHOWCASE_DOCUMENT,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AssetLogInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3368a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18755a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18755a = iArr;
            try {
                iArr[Tag.FILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18755a[Tag.FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18755a[Tag.PAPER_DOCUMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18755a[Tag.PAPER_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18755a[Tag.SHOWCASE_DOCUMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18755a[Tag.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AssetLogInfo$b */
    /* loaded from: classes4.dex */
    public static class C3369b extends UnionSerializer<AssetLogInfo> {

        /* renamed from: b */
        public static final C3369b f18756b = new C3369b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AssetLogInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            AssetLogInfo file = "file".equals(readTag) ? AssetLogInfo.file(FileLogInfo.C3566a.f19825b.deserialize(jsonParser, true)) : Constant.FOLDER.equals(readTag) ? AssetLogInfo.folder(FolderLogInfo.C3624a.f19883b.deserialize(jsonParser, true)) : "paper_document".equals(readTag) ? AssetLogInfo.paperDocument(PaperDocumentLogInfo.C3914a.f20187b.deserialize(jsonParser, true)) : "paper_folder".equals(readTag) ? AssetLogInfo.paperFolder(PaperFolderLogInfo.C3933a.f20206b.deserialize(jsonParser, true)) : "showcase_document".equals(readTag) ? AssetLogInfo.showcaseDocument(ShowcaseDocumentLogInfo.C4172a.f20448b.deserialize(jsonParser, true)) : AssetLogInfo.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return file;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AssetLogInfo assetLogInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3368a.f18755a[assetLogInfo.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("file", jsonGenerator);
                FileLogInfo.C3566a.f19825b.serialize(assetLogInfo.f18750b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag(Constant.FOLDER, jsonGenerator);
                FolderLogInfo.C3624a.f19883b.serialize(assetLogInfo.f18751c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("paper_document", jsonGenerator);
                PaperDocumentLogInfo.C3914a.f20187b.serialize(assetLogInfo.f18752d, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeStartObject();
                writeTag("paper_folder", jsonGenerator);
                PaperFolderLogInfo.C3933a.f20206b.serialize(assetLogInfo.f18753e, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("showcase_document", jsonGenerator);
            ShowcaseDocumentLogInfo.C4172a.f20448b.serialize(assetLogInfo.f18754f, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static AssetLogInfo file(FileLogInfo fileLogInfo) {
        if (fileLogInfo != null) {
            return new AssetLogInfo().m13112g(Tag.FILE, fileLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AssetLogInfo folder(FolderLogInfo folderLogInfo) {
        if (folderLogInfo != null) {
            return new AssetLogInfo().m13113h(Tag.FOLDER, folderLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AssetLogInfo paperDocument(PaperDocumentLogInfo paperDocumentLogInfo) {
        if (paperDocumentLogInfo != null) {
            return new AssetLogInfo().m13114i(Tag.PAPER_DOCUMENT, paperDocumentLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AssetLogInfo paperFolder(PaperFolderLogInfo paperFolderLogInfo) {
        if (paperFolderLogInfo != null) {
            return new AssetLogInfo().m13115j(Tag.PAPER_FOLDER, paperFolderLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AssetLogInfo showcaseDocument(ShowcaseDocumentLogInfo showcaseDocumentLogInfo) {
        if (showcaseDocumentLogInfo != null) {
            return new AssetLogInfo().m13116k(Tag.SHOWCASE_DOCUMENT, showcaseDocumentLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AssetLogInfo)) {
            return false;
        }
        AssetLogInfo assetLogInfo = (AssetLogInfo) obj;
        Tag tag = this.f18749a;
        if (tag != assetLogInfo.f18749a) {
            return false;
        }
        switch (C3368a.f18755a[tag.ordinal()]) {
            case 1:
                FileLogInfo fileLogInfo = this.f18750b;
                FileLogInfo fileLogInfo2 = assetLogInfo.f18750b;
                return fileLogInfo == fileLogInfo2 || fileLogInfo.equals(fileLogInfo2);
            case 2:
                FolderLogInfo folderLogInfo = this.f18751c;
                FolderLogInfo folderLogInfo2 = assetLogInfo.f18751c;
                return folderLogInfo == folderLogInfo2 || folderLogInfo.equals(folderLogInfo2);
            case 3:
                PaperDocumentLogInfo paperDocumentLogInfo = this.f18752d;
                PaperDocumentLogInfo paperDocumentLogInfo2 = assetLogInfo.f18752d;
                return paperDocumentLogInfo == paperDocumentLogInfo2 || paperDocumentLogInfo.equals(paperDocumentLogInfo2);
            case 4:
                PaperFolderLogInfo paperFolderLogInfo = this.f18753e;
                PaperFolderLogInfo paperFolderLogInfo2 = assetLogInfo.f18753e;
                return paperFolderLogInfo == paperFolderLogInfo2 || paperFolderLogInfo.equals(paperFolderLogInfo2);
            case 5:
                ShowcaseDocumentLogInfo showcaseDocumentLogInfo = this.f18754f;
                ShowcaseDocumentLogInfo showcaseDocumentLogInfo2 = assetLogInfo.f18754f;
                return showcaseDocumentLogInfo == showcaseDocumentLogInfo2 || showcaseDocumentLogInfo.equals(showcaseDocumentLogInfo2);
            case 6:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final AssetLogInfo m13111f(Tag tag) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo.f18749a = tag;
        return assetLogInfo;
    }

    /* renamed from: g */
    public final AssetLogInfo m13112g(Tag tag, FileLogInfo fileLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo.f18749a = tag;
        assetLogInfo.f18750b = fileLogInfo;
        return assetLogInfo;
    }

    public FileLogInfo getFileValue() {
        if (this.f18749a == Tag.FILE) {
            return this.f18750b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE, but was Tag." + this.f18749a.name());
    }

    public FolderLogInfo getFolderValue() {
        if (this.f18749a == Tag.FOLDER) {
            return this.f18751c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FOLDER, but was Tag." + this.f18749a.name());
    }

    public PaperDocumentLogInfo getPaperDocumentValue() {
        if (this.f18749a == Tag.PAPER_DOCUMENT) {
            return this.f18752d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOCUMENT, but was Tag." + this.f18749a.name());
    }

    public PaperFolderLogInfo getPaperFolderValue() {
        if (this.f18749a == Tag.PAPER_FOLDER) {
            return this.f18753e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER, but was Tag." + this.f18749a.name());
    }

    public ShowcaseDocumentLogInfo getShowcaseDocumentValue() {
        if (this.f18749a == Tag.SHOWCASE_DOCUMENT) {
            return this.f18754f;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHOWCASE_DOCUMENT, but was Tag." + this.f18749a.name());
    }

    /* renamed from: h */
    public final AssetLogInfo m13113h(Tag tag, FolderLogInfo folderLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo.f18749a = tag;
        assetLogInfo.f18751c = folderLogInfo;
        return assetLogInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18749a, this.f18750b, this.f18751c, this.f18752d, this.f18753e, this.f18754f});
    }

    /* renamed from: i */
    public final AssetLogInfo m13114i(Tag tag, PaperDocumentLogInfo paperDocumentLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo.f18749a = tag;
        assetLogInfo.f18752d = paperDocumentLogInfo;
        return assetLogInfo;
    }

    public boolean isFile() {
        return this.f18749a == Tag.FILE;
    }

    public boolean isFolder() {
        return this.f18749a == Tag.FOLDER;
    }

    public boolean isOther() {
        return this.f18749a == Tag.OTHER;
    }

    public boolean isPaperDocument() {
        return this.f18749a == Tag.PAPER_DOCUMENT;
    }

    public boolean isPaperFolder() {
        return this.f18749a == Tag.PAPER_FOLDER;
    }

    public boolean isShowcaseDocument() {
        return this.f18749a == Tag.SHOWCASE_DOCUMENT;
    }

    /* renamed from: j */
    public final AssetLogInfo m13115j(Tag tag, PaperFolderLogInfo paperFolderLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo.f18749a = tag;
        assetLogInfo.f18753e = paperFolderLogInfo;
        return assetLogInfo;
    }

    /* renamed from: k */
    public final AssetLogInfo m13116k(Tag tag, ShowcaseDocumentLogInfo showcaseDocumentLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo.f18749a = tag;
        assetLogInfo.f18754f = showcaseDocumentLogInfo;
        return assetLogInfo;
    }

    public Tag tag() {
        return this.f18749a;
    }

    public String toString() {
        return C3369b.f18756b.serialize((C3369b) this, false);
    }

    public String toStringMultiline() {
        return C3369b.f18756b.serialize((C3369b) this, true);
    }
}
