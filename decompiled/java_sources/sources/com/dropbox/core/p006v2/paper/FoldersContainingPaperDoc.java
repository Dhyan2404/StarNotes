package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.Folder;
import com.dropbox.core.p006v2.paper.FolderSharingPolicyType;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class FoldersContainingPaperDoc {
    protected final FolderSharingPolicyType folderSharingPolicyType;
    protected final List<Folder> folders;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected FolderSharingPolicyType folderSharingPolicyType = null;
        protected List<Folder> folders = null;

        public FoldersContainingPaperDoc build() {
            return new FoldersContainingPaperDoc(this.folderSharingPolicyType, this.folders);
        }

        public Builder withFolderSharingPolicyType(FolderSharingPolicyType folderSharingPolicyType) {
            this.folderSharingPolicyType = folderSharingPolicyType;
            return this;
        }

        public Builder withFolders(List<Folder> list) {
            if (list != null) {
                Iterator<Folder> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'folders' is null");
                    }
                }
            }
            this.folders = list;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.FoldersContainingPaperDoc$a */
    /* loaded from: classes4.dex */
    public static class C2739a extends StructSerializer<FoldersContainingPaperDoc> {

        /* renamed from: b */
        public static final C2739a f17569b = new C2739a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FoldersContainingPaperDoc deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FolderSharingPolicyType folderSharingPolicyType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("folder_sharing_policy_type".equals(currentName)) {
                    folderSharingPolicyType = (FolderSharingPolicyType) StoneSerializers.nullable(FolderSharingPolicyType.C2738b.f17568b).deserialize(jsonParser);
                } else if ("folders".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(Folder.C2736a.f17566b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            FoldersContainingPaperDoc foldersContainingPaperDoc = new FoldersContainingPaperDoc(folderSharingPolicyType, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(foldersContainingPaperDoc, foldersContainingPaperDoc.toStringMultiline());
            return foldersContainingPaperDoc;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FoldersContainingPaperDoc foldersContainingPaperDoc, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (foldersContainingPaperDoc.folderSharingPolicyType != null) {
                jsonGenerator.writeFieldName("folder_sharing_policy_type");
                StoneSerializers.nullable(FolderSharingPolicyType.C2738b.f17568b).serialize((StoneSerializer) foldersContainingPaperDoc.folderSharingPolicyType, jsonGenerator);
            }
            if (foldersContainingPaperDoc.folders != null) {
                jsonGenerator.writeFieldName("folders");
                StoneSerializers.nullable(StoneSerializers.list(Folder.C2736a.f17566b)).serialize((StoneSerializer) foldersContainingPaperDoc.folders, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FoldersContainingPaperDoc(FolderSharingPolicyType folderSharingPolicyType, List<Folder> list) {
        this.folderSharingPolicyType = folderSharingPolicyType;
        if (list != null) {
            Iterator<Folder> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'folders' is null");
                }
            }
        }
        this.folders = list;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FoldersContainingPaperDoc foldersContainingPaperDoc = (FoldersContainingPaperDoc) obj;
        FolderSharingPolicyType folderSharingPolicyType = this.folderSharingPolicyType;
        FolderSharingPolicyType folderSharingPolicyType2 = foldersContainingPaperDoc.folderSharingPolicyType;
        if (folderSharingPolicyType == folderSharingPolicyType2 || (folderSharingPolicyType != null && folderSharingPolicyType.equals(folderSharingPolicyType2))) {
            List<Folder> list = this.folders;
            List<Folder> list2 = foldersContainingPaperDoc.folders;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public FolderSharingPolicyType getFolderSharingPolicyType() {
        return this.folderSharingPolicyType;
    }

    public List<Folder> getFolders() {
        return this.folders;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.folderSharingPolicyType, this.folders});
    }

    public String toString() {
        return C2739a.f17569b.serialize((C2739a) this, false);
    }

    public String toStringMultiline() {
        return C2739a.f17569b.serialize((C2739a) this, true);
    }

    public FoldersContainingPaperDoc() {
        this(null, null);
    }
}
