package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileCategory;
import com.dropbox.core.p006v2.files.FileStatus;
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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class SearchOptions {
    protected final List<FileCategory> fileCategories;
    protected final List<String> fileExtensions;
    protected final FileStatus fileStatus;
    protected final boolean filenameOnly;
    protected final long maxResults;
    protected final String path;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String path = null;
        protected long maxResults = 100;
        protected FileStatus fileStatus = FileStatus.ACTIVE;
        protected boolean filenameOnly = false;
        protected List<String> fileExtensions = null;
        protected List<FileCategory> fileCategories = null;

        public SearchOptions build() {
            return new SearchOptions(this.path, this.maxResults, this.fileStatus, this.filenameOnly, this.fileExtensions, this.fileCategories);
        }

        public Builder withFileCategories(List<FileCategory> list) {
            if (list != null) {
                Iterator<FileCategory> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'fileCategories' is null");
                    }
                }
            }
            this.fileCategories = list;
            return this;
        }

        public Builder withFileExtensions(List<String> list) {
            if (list != null) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'fileExtensions' is null");
                    }
                }
            }
            this.fileExtensions = list;
            return this;
        }

        public Builder withFileStatus(FileStatus fileStatus) {
            if (fileStatus != null) {
                this.fileStatus = fileStatus;
            } else {
                this.fileStatus = FileStatus.ACTIVE;
            }
            return this;
        }

        public Builder withFilenameOnly(Boolean bool) {
            if (bool != null) {
                this.filenameOnly = bool.booleanValue();
            } else {
                this.filenameOnly = false;
            }
            return this;
        }

        public Builder withMaxResults(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
            }
            this.maxResults = l.longValue();
            return this;
        }

        public Builder withPath(String str) {
            if (str != null && !Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SearchOptions$a */
    /* loaded from: classes4.dex */
    public static class C2653a extends StructSerializer<SearchOptions> {

        /* renamed from: b */
        public static final C2653a f17395b = new C2653a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchOptions deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = 100L;
            FileStatus fileStatus = FileStatus.ACTIVE;
            Boolean bool = Boolean.FALSE;
            String str2 = null;
            List list = null;
            List list2 = null;
            FileStatus fileStatus2 = fileStatus;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("max_results".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("file_status".equals(currentName)) {
                    fileStatus2 = FileStatus.C2547b.f17155b.deserialize(jsonParser);
                } else if ("filename_only".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("file_extensions".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(jsonParser);
                } else if ("file_categories".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(FileCategory.C2538b.f17142b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SearchOptions searchOptions = new SearchOptions(str2, l.longValue(), fileStatus2, bool.booleanValue(), list, list2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchOptions, searchOptions.toStringMultiline());
            return searchOptions;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchOptions searchOptions, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (searchOptions.path != null) {
                jsonGenerator.writeFieldName("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) searchOptions.path, jsonGenerator);
            }
            jsonGenerator.writeFieldName("max_results");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(searchOptions.maxResults), jsonGenerator);
            jsonGenerator.writeFieldName("file_status");
            FileStatus.C2547b.f17155b.serialize(searchOptions.fileStatus, jsonGenerator);
            jsonGenerator.writeFieldName("filename_only");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(searchOptions.filenameOnly), jsonGenerator);
            if (searchOptions.fileExtensions != null) {
                jsonGenerator.writeFieldName("file_extensions");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize((StoneSerializer) searchOptions.fileExtensions, jsonGenerator);
            }
            if (searchOptions.fileCategories != null) {
                jsonGenerator.writeFieldName("file_categories");
                StoneSerializers.nullable(StoneSerializers.list(FileCategory.C2538b.f17142b)).serialize((StoneSerializer) searchOptions.fileCategories, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchOptions(String str, long j, FileStatus fileStatus, boolean z, List<String> list, List<FileCategory> list2) {
        if (str != null && !Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (j < 1) {
            throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
        }
        if (j <= 1000) {
            this.maxResults = j;
            if (fileStatus != null) {
                this.fileStatus = fileStatus;
                this.filenameOnly = z;
                if (list != null) {
                    Iterator<String> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'fileExtensions' is null");
                        }
                    }
                }
                this.fileExtensions = list;
                if (list2 != null) {
                    Iterator<FileCategory> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        if (it3.next() == null) {
                            throw new IllegalArgumentException("An item in list 'fileCategories' is null");
                        }
                    }
                }
                this.fileCategories = list2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'fileStatus' is null");
        }
        throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        FileStatus fileStatus;
        FileStatus fileStatus2;
        List<String> list;
        List<String> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SearchOptions searchOptions = (SearchOptions) obj;
        String str = this.path;
        String str2 = searchOptions.path;
        if ((str == str2 || (str != null && str.equals(str2))) && this.maxResults == searchOptions.maxResults && (((fileStatus = this.fileStatus) == (fileStatus2 = searchOptions.fileStatus) || fileStatus.equals(fileStatus2)) && this.filenameOnly == searchOptions.filenameOnly && ((list = this.fileExtensions) == (list2 = searchOptions.fileExtensions) || (list != null && list.equals(list2))))) {
            List<FileCategory> list3 = this.fileCategories;
            List<FileCategory> list4 = searchOptions.fileCategories;
            if (list3 == list4) {
                return true;
            }
            if (list3 != null && list3.equals(list4)) {
                return true;
            }
        }
        return false;
    }

    public List<FileCategory> getFileCategories() {
        return this.fileCategories;
    }

    public List<String> getFileExtensions() {
        return this.fileExtensions;
    }

    public FileStatus getFileStatus() {
        return this.fileStatus;
    }

    public boolean getFilenameOnly() {
        return this.filenameOnly;
    }

    public long getMaxResults() {
        return this.maxResults;
    }

    public String getPath() {
        return this.path;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, Long.valueOf(this.maxResults), this.fileStatus, Boolean.valueOf(this.filenameOnly), this.fileExtensions, this.fileCategories});
    }

    public String toString() {
        return C2653a.f17395b.serialize((C2653a) this, false);
    }

    public String toStringMultiline() {
        return C2653a.f17395b.serialize((C2653a) this, true);
    }

    public SearchOptions() {
        this(null, 100L, FileStatus.ACTIVE, false, null, null);
    }
}
