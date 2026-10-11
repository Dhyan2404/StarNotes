package com.onyx.android.sdk.replicator.note.proto;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.onyx.android.sdk.replicator.note.proto.CoverProto;
import com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto;
import com.onyx.android.sdk.replicator.note.proto.NoteInfoProto;
import com.onyx.android.sdk.replicator.note.proto.PageTagProto;
import com.onyx.android.sdk.replicator.note.proto.TagProto;
import com.onyx.android.sdk.replicator.note.proto.TemplateProto;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes8.dex */
public final class UserDataProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45892a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45893b;

    /* renamed from: c */
    public static Descriptors.FileDescriptor f45894c;

    /* loaded from: classes8.dex */
    public static final class DataCollection extends GeneratedMessageV3 implements DataCollectionOrBuilder {
        public static final int COVERLIST_FIELD_NUMBER = 2;
        public static final int DOCTAGLIST_FIELD_NUMBER = 3;
        public static final int EXCERPTCOLLECTIONLIST_FIELD_NUMBER = 5;
        public static final int NOTEINFOLIST_FIELD_NUMBER = 6;
        public static final int PAGETAGLIST_FIELD_NUMBER = 4;
        public static final int TAGLIST_FIELD_NUMBER = 7;
        public static final int TEMPLATELIST_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private CoverProto.CoverList coverList_;
        private TagProto.TagList docTagList_;
        private ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList_;
        private byte memoizedIsInitialized;
        private NoteInfoProto.NoteInfoList noteInfoList_;
        private PageTagProto.PageTagList pageTagList_;
        private TagProto.TagList tagList_;
        private TemplateProto.TemplateList templateList_;
        private static final DataCollection DEFAULT_INSTANCE = new DataCollection();
        private static final Parser<DataCollection> PARSER = new C7787a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DataCollectionOrBuilder {

            /* renamed from: i */
            public TemplateProto.TemplateList f45895i;

            /* renamed from: j */
            public SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> f45896j;

            /* renamed from: k */
            public CoverProto.CoverList f45897k;

            /* renamed from: l */
            public SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> f45898l;

            /* renamed from: m */
            public TagProto.TagList f45899m;

            /* renamed from: n */
            public SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> f45900n;

            /* renamed from: o */
            public PageTagProto.PageTagList f45901o;

            /* renamed from: p */
            public SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> f45902p;

            /* renamed from: q */
            public ExcerptCollectionProto.ExcerptCollectionList f45903q;

            /* renamed from: r */
            public SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> f45904r;

            /* renamed from: s */
            public NoteInfoProto.NoteInfoList f45905s;

            /* renamed from: t */
            public SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> f45906t;

            /* renamed from: u */
            public TagProto.TagList f45907u;

            /* renamed from: v */
            public SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> f45908v;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7788a c7788a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UserDataProto.f45892a;
            }

            public Builder clearCoverList() {
                if (this.f45898l == null) {
                    this.f45897k = null;
                    onChanged();
                } else {
                    this.f45897k = null;
                    this.f45898l = null;
                }
                return this;
            }

            public Builder clearDocTagList() {
                if (this.f45900n == null) {
                    this.f45899m = null;
                    onChanged();
                } else {
                    this.f45899m = null;
                    this.f45900n = null;
                }
                return this;
            }

            public Builder clearExcerptCollectionList() {
                if (this.f45904r == null) {
                    this.f45903q = null;
                    onChanged();
                } else {
                    this.f45903q = null;
                    this.f45904r = null;
                }
                return this;
            }

            public Builder clearNoteInfoList() {
                if (this.f45906t == null) {
                    this.f45905s = null;
                    onChanged();
                } else {
                    this.f45905s = null;
                    this.f45906t = null;
                }
                return this;
            }

            public Builder clearPageTagList() {
                if (this.f45902p == null) {
                    this.f45901o = null;
                    onChanged();
                } else {
                    this.f45901o = null;
                    this.f45902p = null;
                }
                return this;
            }

            public Builder clearTagList() {
                if (this.f45908v == null) {
                    this.f45907u = null;
                    onChanged();
                } else {
                    this.f45907u = null;
                    this.f45908v = null;
                }
                return this;
            }

            public Builder clearTemplateList() {
                if (this.f45896j == null) {
                    this.f45895i = null;
                    onChanged();
                } else {
                    this.f45895i = null;
                    this.f45896j = null;
                }
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public CoverProto.CoverList getCoverList() {
                SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> singleFieldBuilderV3 = this.f45898l;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                CoverProto.CoverList coverList = this.f45897k;
                return coverList == null ? CoverProto.CoverList.getDefaultInstance() : coverList;
            }

            public CoverProto.CoverList.Builder getCoverListBuilder() {
                onChanged();
                return m35376h().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public CoverProto.CoverListOrBuilder getCoverListOrBuilder() {
                SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> singleFieldBuilderV3 = this.f45898l;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                CoverProto.CoverList coverList = this.f45897k;
                return coverList == null ? CoverProto.CoverList.getDefaultInstance() : coverList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return UserDataProto.f45892a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public TagProto.TagList getDocTagList() {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45900n;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                TagProto.TagList tagList = this.f45899m;
                return tagList == null ? TagProto.TagList.getDefaultInstance() : tagList;
            }

            public TagProto.TagList.Builder getDocTagListBuilder() {
                onChanged();
                return m35377i().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public TagProto.TagListOrBuilder getDocTagListOrBuilder() {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45900n;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                TagProto.TagList tagList = this.f45899m;
                return tagList == null ? TagProto.TagList.getDefaultInstance() : tagList;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public ExcerptCollectionProto.ExcerptCollectionList getExcerptCollectionList() {
                SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> singleFieldBuilderV3 = this.f45904r;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList = this.f45903q;
                return excerptCollectionList == null ? ExcerptCollectionProto.ExcerptCollectionList.getDefaultInstance() : excerptCollectionList;
            }

            public ExcerptCollectionProto.ExcerptCollectionList.Builder getExcerptCollectionListBuilder() {
                onChanged();
                return m35378j().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public ExcerptCollectionProto.ExcerptCollectionListOrBuilder getExcerptCollectionListOrBuilder() {
                SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> singleFieldBuilderV3 = this.f45904r;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList = this.f45903q;
                return excerptCollectionList == null ? ExcerptCollectionProto.ExcerptCollectionList.getDefaultInstance() : excerptCollectionList;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public NoteInfoProto.NoteInfoList getNoteInfoList() {
                SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> singleFieldBuilderV3 = this.f45906t;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                NoteInfoProto.NoteInfoList noteInfoList = this.f45905s;
                return noteInfoList == null ? NoteInfoProto.NoteInfoList.getDefaultInstance() : noteInfoList;
            }

            public NoteInfoProto.NoteInfoList.Builder getNoteInfoListBuilder() {
                onChanged();
                return m35379k().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public NoteInfoProto.NoteInfoListOrBuilder getNoteInfoListOrBuilder() {
                SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> singleFieldBuilderV3 = this.f45906t;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                NoteInfoProto.NoteInfoList noteInfoList = this.f45905s;
                return noteInfoList == null ? NoteInfoProto.NoteInfoList.getDefaultInstance() : noteInfoList;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public PageTagProto.PageTagList getPageTagList() {
                SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> singleFieldBuilderV3 = this.f45902p;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                PageTagProto.PageTagList pageTagList = this.f45901o;
                return pageTagList == null ? PageTagProto.PageTagList.getDefaultInstance() : pageTagList;
            }

            public PageTagProto.PageTagList.Builder getPageTagListBuilder() {
                onChanged();
                return m35380l().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public PageTagProto.PageTagListOrBuilder getPageTagListOrBuilder() {
                SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> singleFieldBuilderV3 = this.f45902p;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                PageTagProto.PageTagList pageTagList = this.f45901o;
                return pageTagList == null ? PageTagProto.PageTagList.getDefaultInstance() : pageTagList;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public TagProto.TagList getTagList() {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45908v;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                TagProto.TagList tagList = this.f45907u;
                return tagList == null ? TagProto.TagList.getDefaultInstance() : tagList;
            }

            public TagProto.TagList.Builder getTagListBuilder() {
                onChanged();
                return m35381m().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public TagProto.TagListOrBuilder getTagListOrBuilder() {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45908v;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                TagProto.TagList tagList = this.f45907u;
                return tagList == null ? TagProto.TagList.getDefaultInstance() : tagList;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public TemplateProto.TemplateList getTemplateList() {
                SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> singleFieldBuilderV3 = this.f45896j;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                TemplateProto.TemplateList templateList = this.f45895i;
                return templateList == null ? TemplateProto.TemplateList.getDefaultInstance() : templateList;
            }

            public TemplateProto.TemplateList.Builder getTemplateListBuilder() {
                onChanged();
                return m35382n().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public TemplateProto.TemplateListOrBuilder getTemplateListOrBuilder() {
                SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> singleFieldBuilderV3 = this.f45896j;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                TemplateProto.TemplateList templateList = this.f45895i;
                return templateList == null ? TemplateProto.TemplateList.getDefaultInstance() : templateList;
            }

            /* renamed from: h */
            public final SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> m35376h() {
                if (this.f45898l == null) {
                    this.f45898l = new SingleFieldBuilderV3<>(getCoverList(), getParentForChildren(), isClean());
                    this.f45897k = null;
                }
                return this.f45898l;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public boolean hasCoverList() {
                return (this.f45898l == null && this.f45897k == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public boolean hasDocTagList() {
                return (this.f45900n == null && this.f45899m == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public boolean hasExcerptCollectionList() {
                return (this.f45904r == null && this.f45903q == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public boolean hasNoteInfoList() {
                return (this.f45906t == null && this.f45905s == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public boolean hasPageTagList() {
                return (this.f45902p == null && this.f45901o == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public boolean hasTagList() {
                return (this.f45908v == null && this.f45907u == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
            public boolean hasTemplateList() {
                return (this.f45896j == null && this.f45895i == null) ? false : true;
            }

            /* renamed from: i */
            public final SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> m35377i() {
                if (this.f45900n == null) {
                    this.f45900n = new SingleFieldBuilderV3<>(getDocTagList(), getParentForChildren(), isClean());
                    this.f45899m = null;
                }
                return this.f45900n;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return UserDataProto.f45893b.ensureFieldAccessorsInitialized(DataCollection.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> m35378j() {
                if (this.f45904r == null) {
                    this.f45904r = new SingleFieldBuilderV3<>(getExcerptCollectionList(), getParentForChildren(), isClean());
                    this.f45903q = null;
                }
                return this.f45904r;
            }

            /* renamed from: k */
            public final SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> m35379k() {
                if (this.f45906t == null) {
                    this.f45906t = new SingleFieldBuilderV3<>(getNoteInfoList(), getParentForChildren(), isClean());
                    this.f45905s = null;
                }
                return this.f45906t;
            }

            /* renamed from: l */
            public final SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> m35380l() {
                if (this.f45902p == null) {
                    this.f45902p = new SingleFieldBuilderV3<>(getPageTagList(), getParentForChildren(), isClean());
                    this.f45901o = null;
                }
                return this.f45902p;
            }

            /* renamed from: m */
            public final SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> m35381m() {
                if (this.f45908v == null) {
                    this.f45908v = new SingleFieldBuilderV3<>(getTagList(), getParentForChildren(), isClean());
                    this.f45907u = null;
                }
                return this.f45908v;
            }

            public Builder mergeCoverList(CoverProto.CoverList coverList) {
                SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> singleFieldBuilderV3 = this.f45898l;
                if (singleFieldBuilderV3 == null) {
                    CoverProto.CoverList coverList2 = this.f45897k;
                    if (coverList2 != null) {
                        this.f45897k = CoverProto.CoverList.newBuilder(coverList2).mergeFrom(coverList).buildPartial();
                    } else {
                        this.f45897k = coverList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(coverList);
                }
                return this;
            }

            public Builder mergeDocTagList(TagProto.TagList tagList) {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45900n;
                if (singleFieldBuilderV3 == null) {
                    TagProto.TagList tagList2 = this.f45899m;
                    if (tagList2 != null) {
                        this.f45899m = TagProto.TagList.newBuilder(tagList2).mergeFrom(tagList).buildPartial();
                    } else {
                        this.f45899m = tagList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(tagList);
                }
                return this;
            }

            public Builder mergeExcerptCollectionList(ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList) {
                SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> singleFieldBuilderV3 = this.f45904r;
                if (singleFieldBuilderV3 == null) {
                    ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList2 = this.f45903q;
                    if (excerptCollectionList2 != null) {
                        this.f45903q = ExcerptCollectionProto.ExcerptCollectionList.newBuilder(excerptCollectionList2).mergeFrom(excerptCollectionList).buildPartial();
                    } else {
                        this.f45903q = excerptCollectionList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(excerptCollectionList);
                }
                return this;
            }

            public Builder mergeNoteInfoList(NoteInfoProto.NoteInfoList noteInfoList) {
                SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> singleFieldBuilderV3 = this.f45906t;
                if (singleFieldBuilderV3 == null) {
                    NoteInfoProto.NoteInfoList noteInfoList2 = this.f45905s;
                    if (noteInfoList2 != null) {
                        this.f45905s = NoteInfoProto.NoteInfoList.newBuilder(noteInfoList2).mergeFrom(noteInfoList).buildPartial();
                    } else {
                        this.f45905s = noteInfoList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(noteInfoList);
                }
                return this;
            }

            public Builder mergePageTagList(PageTagProto.PageTagList pageTagList) {
                SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> singleFieldBuilderV3 = this.f45902p;
                if (singleFieldBuilderV3 == null) {
                    PageTagProto.PageTagList pageTagList2 = this.f45901o;
                    if (pageTagList2 != null) {
                        this.f45901o = PageTagProto.PageTagList.newBuilder(pageTagList2).mergeFrom(pageTagList).buildPartial();
                    } else {
                        this.f45901o = pageTagList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(pageTagList);
                }
                return this;
            }

            public Builder mergeTagList(TagProto.TagList tagList) {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45908v;
                if (singleFieldBuilderV3 == null) {
                    TagProto.TagList tagList2 = this.f45907u;
                    if (tagList2 != null) {
                        this.f45907u = TagProto.TagList.newBuilder(tagList2).mergeFrom(tagList).buildPartial();
                    } else {
                        this.f45907u = tagList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(tagList);
                }
                return this;
            }

            public Builder mergeTemplateList(TemplateProto.TemplateList templateList) {
                SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> singleFieldBuilderV3 = this.f45896j;
                if (singleFieldBuilderV3 == null) {
                    TemplateProto.TemplateList templateList2 = this.f45895i;
                    if (templateList2 != null) {
                        this.f45895i = TemplateProto.TemplateList.newBuilder(templateList2).mergeFrom(templateList).buildPartial();
                    } else {
                        this.f45895i = templateList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(templateList);
                }
                return this;
            }

            /* renamed from: n */
            public final SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> m35382n() {
                if (this.f45896j == null) {
                    this.f45896j = new SingleFieldBuilderV3<>(getTemplateList(), getParentForChildren(), isClean());
                    this.f45895i = null;
                }
                return this.f45896j;
            }

            /* renamed from: o */
            public final void m35383o() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder setCoverList(CoverProto.CoverList coverList) {
                SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> singleFieldBuilderV3 = this.f45898l;
                if (singleFieldBuilderV3 == null) {
                    coverList.getClass();
                    this.f45897k = coverList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(coverList);
                }
                return this;
            }

            public Builder setDocTagList(TagProto.TagList tagList) {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45900n;
                if (singleFieldBuilderV3 == null) {
                    tagList.getClass();
                    this.f45899m = tagList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(tagList);
                }
                return this;
            }

            public Builder setExcerptCollectionList(ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList) {
                SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> singleFieldBuilderV3 = this.f45904r;
                if (singleFieldBuilderV3 == null) {
                    excerptCollectionList.getClass();
                    this.f45903q = excerptCollectionList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(excerptCollectionList);
                }
                return this;
            }

            public Builder setNoteInfoList(NoteInfoProto.NoteInfoList noteInfoList) {
                SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> singleFieldBuilderV3 = this.f45906t;
                if (singleFieldBuilderV3 == null) {
                    noteInfoList.getClass();
                    this.f45905s = noteInfoList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(noteInfoList);
                }
                return this;
            }

            public Builder setPageTagList(PageTagProto.PageTagList pageTagList) {
                SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> singleFieldBuilderV3 = this.f45902p;
                if (singleFieldBuilderV3 == null) {
                    pageTagList.getClass();
                    this.f45901o = pageTagList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(pageTagList);
                }
                return this;
            }

            public Builder setTagList(TagProto.TagList tagList) {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45908v;
                if (singleFieldBuilderV3 == null) {
                    tagList.getClass();
                    this.f45907u = tagList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(tagList);
                }
                return this;
            }

            public Builder setTemplateList(TemplateProto.TemplateList templateList) {
                SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> singleFieldBuilderV3 = this.f45896j;
                if (singleFieldBuilderV3 == null) {
                    templateList.getClass();
                    this.f45895i = templateList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(templateList);
                }
                return this;
            }

            public /* synthetic */ Builder(C7788a c7788a) {
                this();
            }

            public Builder() {
                this.f45895i = null;
                this.f45897k = null;
                this.f45899m = null;
                this.f45901o = null;
                this.f45903q = null;
                this.f45905s = null;
                this.f45907u = null;
                m35383o();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DataCollection build() {
                DataCollection buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DataCollection buildPartial() {
                DataCollection dataCollection = new DataCollection(this, (C7788a) null);
                SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> singleFieldBuilderV3 = this.f45896j;
                if (singleFieldBuilderV3 == null) {
                    dataCollection.templateList_ = this.f45895i;
                } else {
                    dataCollection.templateList_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> singleFieldBuilderV32 = this.f45898l;
                if (singleFieldBuilderV32 == null) {
                    dataCollection.coverList_ = this.f45897k;
                } else {
                    dataCollection.coverList_ = singleFieldBuilderV32.build();
                }
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV33 = this.f45900n;
                if (singleFieldBuilderV33 == null) {
                    dataCollection.docTagList_ = this.f45899m;
                } else {
                    dataCollection.docTagList_ = singleFieldBuilderV33.build();
                }
                SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> singleFieldBuilderV34 = this.f45902p;
                if (singleFieldBuilderV34 == null) {
                    dataCollection.pageTagList_ = this.f45901o;
                } else {
                    dataCollection.pageTagList_ = singleFieldBuilderV34.build();
                }
                SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> singleFieldBuilderV35 = this.f45904r;
                if (singleFieldBuilderV35 == null) {
                    dataCollection.excerptCollectionList_ = this.f45903q;
                } else {
                    dataCollection.excerptCollectionList_ = singleFieldBuilderV35.build();
                }
                SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> singleFieldBuilderV36 = this.f45906t;
                if (singleFieldBuilderV36 == null) {
                    dataCollection.noteInfoList_ = this.f45905s;
                } else {
                    dataCollection.noteInfoList_ = singleFieldBuilderV36.build();
                }
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV37 = this.f45908v;
                if (singleFieldBuilderV37 == null) {
                    dataCollection.tagList_ = this.f45907u;
                } else {
                    dataCollection.tagList_ = singleFieldBuilderV37.build();
                }
                onBuilt();
                return dataCollection;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DataCollection getDefaultInstanceForType() {
                return DataCollection.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFieldsProto3(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.f45896j == null) {
                    this.f45895i = null;
                } else {
                    this.f45895i = null;
                    this.f45896j = null;
                }
                if (this.f45898l == null) {
                    this.f45897k = null;
                } else {
                    this.f45897k = null;
                    this.f45898l = null;
                }
                if (this.f45900n == null) {
                    this.f45899m = null;
                } else {
                    this.f45899m = null;
                    this.f45900n = null;
                }
                if (this.f45902p == null) {
                    this.f45901o = null;
                } else {
                    this.f45901o = null;
                    this.f45902p = null;
                }
                if (this.f45904r == null) {
                    this.f45903q = null;
                } else {
                    this.f45903q = null;
                    this.f45904r = null;
                }
                if (this.f45906t == null) {
                    this.f45905s = null;
                } else {
                    this.f45905s = null;
                    this.f45906t = null;
                }
                if (this.f45908v == null) {
                    this.f45907u = null;
                } else {
                    this.f45907u = null;
                    this.f45908v = null;
                }
                return this;
            }

            public Builder setCoverList(CoverProto.CoverList.Builder builder) {
                SingleFieldBuilderV3<CoverProto.CoverList, CoverProto.CoverList.Builder, CoverProto.CoverListOrBuilder> singleFieldBuilderV3 = this.f45898l;
                if (singleFieldBuilderV3 == null) {
                    this.f45897k = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setDocTagList(TagProto.TagList.Builder builder) {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45900n;
                if (singleFieldBuilderV3 == null) {
                    this.f45899m = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setExcerptCollectionList(ExcerptCollectionProto.ExcerptCollectionList.Builder builder) {
                SingleFieldBuilderV3<ExcerptCollectionProto.ExcerptCollectionList, ExcerptCollectionProto.ExcerptCollectionList.Builder, ExcerptCollectionProto.ExcerptCollectionListOrBuilder> singleFieldBuilderV3 = this.f45904r;
                if (singleFieldBuilderV3 == null) {
                    this.f45903q = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setNoteInfoList(NoteInfoProto.NoteInfoList.Builder builder) {
                SingleFieldBuilderV3<NoteInfoProto.NoteInfoList, NoteInfoProto.NoteInfoList.Builder, NoteInfoProto.NoteInfoListOrBuilder> singleFieldBuilderV3 = this.f45906t;
                if (singleFieldBuilderV3 == null) {
                    this.f45905s = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setPageTagList(PageTagProto.PageTagList.Builder builder) {
                SingleFieldBuilderV3<PageTagProto.PageTagList, PageTagProto.PageTagList.Builder, PageTagProto.PageTagListOrBuilder> singleFieldBuilderV3 = this.f45902p;
                if (singleFieldBuilderV3 == null) {
                    this.f45901o = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setTagList(TagProto.TagList.Builder builder) {
                SingleFieldBuilderV3<TagProto.TagList, TagProto.TagList.Builder, TagProto.TagListOrBuilder> singleFieldBuilderV3 = this.f45908v;
                if (singleFieldBuilderV3 == null) {
                    this.f45907u = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setTemplateList(TemplateProto.TemplateList.Builder builder) {
                SingleFieldBuilderV3<TemplateProto.TemplateList, TemplateProto.TemplateList.Builder, TemplateProto.TemplateListOrBuilder> singleFieldBuilderV3 = this.f45896j;
                if (singleFieldBuilderV3 == null) {
                    this.f45895i = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof DataCollection) {
                    return mergeFrom((DataCollection) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DataCollection dataCollection) {
                if (dataCollection == DataCollection.getDefaultInstance()) {
                    return this;
                }
                if (dataCollection.hasTemplateList()) {
                    mergeTemplateList(dataCollection.getTemplateList());
                }
                if (dataCollection.hasCoverList()) {
                    mergeCoverList(dataCollection.getCoverList());
                }
                if (dataCollection.hasDocTagList()) {
                    mergeDocTagList(dataCollection.getDocTagList());
                }
                if (dataCollection.hasPageTagList()) {
                    mergePageTagList(dataCollection.getPageTagList());
                }
                if (dataCollection.hasExcerptCollectionList()) {
                    mergeExcerptCollectionList(dataCollection.getExcerptCollectionList());
                }
                if (dataCollection.hasNoteInfoList()) {
                    mergeNoteInfoList(dataCollection.getNoteInfoList());
                }
                if (dataCollection.hasTagList()) {
                    mergeTagList(dataCollection.getTagList());
                }
                mergeUnknownFields(((GeneratedMessageV3) dataCollection).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45895i = null;
                this.f45897k = null;
                this.f45899m = null;
                this.f45901o = null;
                this.f45903q = null;
                this.f45905s = null;
                this.f45907u = null;
                m35383o();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollection.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollection.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.UserDataProto$DataCollection r3 = (com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollection) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.onyx.android.sdk.replicator.note.proto.UserDataProto$DataCollection r4 = (com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollection) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollection.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.UserDataProto$DataCollection$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.UserDataProto$DataCollection$a */
        /* loaded from: classes8.dex */
        public class C7787a extends AbstractParser<DataCollection> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public DataCollection parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DataCollection(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ DataCollection(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7788a c7788a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static DataCollection getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UserDataProto.f45892a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DataCollection parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DataCollection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<DataCollection> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DataCollection)) {
                return super.equals(obj);
            }
            DataCollection dataCollection = (DataCollection) obj;
            boolean z = hasTemplateList() == dataCollection.hasTemplateList();
            if (hasTemplateList()) {
                z = z && getTemplateList().equals(dataCollection.getTemplateList());
            }
            boolean z2 = z && hasCoverList() == dataCollection.hasCoverList();
            if (hasCoverList()) {
                z2 = z2 && getCoverList().equals(dataCollection.getCoverList());
            }
            boolean z3 = z2 && hasDocTagList() == dataCollection.hasDocTagList();
            if (hasDocTagList()) {
                z3 = z3 && getDocTagList().equals(dataCollection.getDocTagList());
            }
            boolean z4 = z3 && hasPageTagList() == dataCollection.hasPageTagList();
            if (hasPageTagList()) {
                z4 = z4 && getPageTagList().equals(dataCollection.getPageTagList());
            }
            boolean z5 = z4 && hasExcerptCollectionList() == dataCollection.hasExcerptCollectionList();
            if (hasExcerptCollectionList()) {
                z5 = z5 && getExcerptCollectionList().equals(dataCollection.getExcerptCollectionList());
            }
            boolean z6 = z5 && hasNoteInfoList() == dataCollection.hasNoteInfoList();
            if (hasNoteInfoList()) {
                z6 = z6 && getNoteInfoList().equals(dataCollection.getNoteInfoList());
            }
            boolean z7 = z6 && hasTagList() == dataCollection.hasTagList();
            if (hasTagList()) {
                z7 = z7 && getTagList().equals(dataCollection.getTagList());
            }
            return z7 && this.unknownFields.equals(dataCollection.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public CoverProto.CoverList getCoverList() {
            CoverProto.CoverList coverList = this.coverList_;
            return coverList == null ? CoverProto.CoverList.getDefaultInstance() : coverList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public CoverProto.CoverListOrBuilder getCoverListOrBuilder() {
            return getCoverList();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public TagProto.TagList getDocTagList() {
            TagProto.TagList tagList = this.docTagList_;
            return tagList == null ? TagProto.TagList.getDefaultInstance() : tagList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public TagProto.TagListOrBuilder getDocTagListOrBuilder() {
            return getDocTagList();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public ExcerptCollectionProto.ExcerptCollectionList getExcerptCollectionList() {
            ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList = this.excerptCollectionList_;
            return excerptCollectionList == null ? ExcerptCollectionProto.ExcerptCollectionList.getDefaultInstance() : excerptCollectionList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public ExcerptCollectionProto.ExcerptCollectionListOrBuilder getExcerptCollectionListOrBuilder() {
            return getExcerptCollectionList();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public NoteInfoProto.NoteInfoList getNoteInfoList() {
            NoteInfoProto.NoteInfoList noteInfoList = this.noteInfoList_;
            return noteInfoList == null ? NoteInfoProto.NoteInfoList.getDefaultInstance() : noteInfoList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public NoteInfoProto.NoteInfoListOrBuilder getNoteInfoListOrBuilder() {
            return getNoteInfoList();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public PageTagProto.PageTagList getPageTagList() {
            PageTagProto.PageTagList pageTagList = this.pageTagList_;
            return pageTagList == null ? PageTagProto.PageTagList.getDefaultInstance() : pageTagList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public PageTagProto.PageTagListOrBuilder getPageTagListOrBuilder() {
            return getPageTagList();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DataCollection> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = this.templateList_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getTemplateList()) : 0;
            if (this.coverList_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(2, getCoverList());
            }
            if (this.docTagList_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(3, getDocTagList());
            }
            if (this.pageTagList_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(4, getPageTagList());
            }
            if (this.excerptCollectionList_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(5, getExcerptCollectionList());
            }
            if (this.noteInfoList_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(6, getNoteInfoList());
            }
            if (this.tagList_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(7, getTagList());
            }
            int serializedSize = computeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public TagProto.TagList getTagList() {
            TagProto.TagList tagList = this.tagList_;
            return tagList == null ? TagProto.TagList.getDefaultInstance() : tagList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public TagProto.TagListOrBuilder getTagListOrBuilder() {
            return getTagList();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public TemplateProto.TemplateList getTemplateList() {
            TemplateProto.TemplateList templateList = this.templateList_;
            return templateList == null ? TemplateProto.TemplateList.getDefaultInstance() : templateList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public TemplateProto.TemplateListOrBuilder getTemplateListOrBuilder() {
            return getTemplateList();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public boolean hasCoverList() {
            return this.coverList_ != null;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public boolean hasDocTagList() {
            return this.docTagList_ != null;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public boolean hasExcerptCollectionList() {
            return this.excerptCollectionList_ != null;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public boolean hasNoteInfoList() {
            return this.noteInfoList_ != null;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public boolean hasPageTagList() {
            return this.pageTagList_ != null;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public boolean hasTagList() {
            return this.tagList_ != null;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.UserDataProto.DataCollectionOrBuilder
        public boolean hasTemplateList() {
            return this.templateList_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasTemplateList()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getTemplateList().hashCode();
            }
            if (hasCoverList()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getCoverList().hashCode();
            }
            if (hasDocTagList()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getDocTagList().hashCode();
            }
            if (hasPageTagList()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getPageTagList().hashCode();
            }
            if (hasExcerptCollectionList()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getExcerptCollectionList().hashCode();
            }
            if (hasNoteInfoList()) {
                hashCode = (((hashCode * 37) + 6) * 53) + getNoteInfoList().hashCode();
            }
            if (hasTagList()) {
                hashCode = (((hashCode * 37) + 7) * 53) + getTagList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return UserDataProto.f45893b.ensureFieldAccessorsInitialized(DataCollection.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.templateList_ != null) {
                codedOutputStream.writeMessage(1, getTemplateList());
            }
            if (this.coverList_ != null) {
                codedOutputStream.writeMessage(2, getCoverList());
            }
            if (this.docTagList_ != null) {
                codedOutputStream.writeMessage(3, getDocTagList());
            }
            if (this.pageTagList_ != null) {
                codedOutputStream.writeMessage(4, getPageTagList());
            }
            if (this.excerptCollectionList_ != null) {
                codedOutputStream.writeMessage(5, getExcerptCollectionList());
            }
            if (this.noteInfoList_ != null) {
                codedOutputStream.writeMessage(6, getNoteInfoList());
            }
            if (this.tagList_ != null) {
                codedOutputStream.writeMessage(7, getTagList());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ DataCollection(GeneratedMessageV3.Builder builder, C7788a c7788a) {
            this(builder);
        }

        public static Builder newBuilder(DataCollection dataCollection) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(dataCollection);
        }

        public static DataCollection parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private DataCollection(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DataCollection parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DataCollection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DataCollection getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7788a c7788a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7788a) : new Builder(c7788a).mergeFrom(this);
        }

        public static DataCollection parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private DataCollection() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DataCollection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DataCollection parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private DataCollection(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    TemplateProto.TemplateList templateList = this.templateList_;
                                    TemplateProto.TemplateList.Builder builder = templateList != null ? templateList.toBuilder() : null;
                                    TemplateProto.TemplateList templateList2 = (TemplateProto.TemplateList) codedInputStream.readMessage(TemplateProto.TemplateList.parser(), extensionRegistryLite);
                                    this.templateList_ = templateList2;
                                    if (builder != null) {
                                        builder.mergeFrom(templateList2);
                                        this.templateList_ = builder.buildPartial();
                                    }
                                } else if (readTag == 18) {
                                    CoverProto.CoverList coverList = this.coverList_;
                                    CoverProto.CoverList.Builder builder2 = coverList != null ? coverList.toBuilder() : null;
                                    CoverProto.CoverList coverList2 = (CoverProto.CoverList) codedInputStream.readMessage(CoverProto.CoverList.parser(), extensionRegistryLite);
                                    this.coverList_ = coverList2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(coverList2);
                                        this.coverList_ = builder2.buildPartial();
                                    }
                                } else if (readTag == 26) {
                                    TagProto.TagList tagList = this.docTagList_;
                                    TagProto.TagList.Builder builder3 = tagList != null ? tagList.toBuilder() : null;
                                    TagProto.TagList tagList2 = (TagProto.TagList) codedInputStream.readMessage(TagProto.TagList.parser(), extensionRegistryLite);
                                    this.docTagList_ = tagList2;
                                    if (builder3 != null) {
                                        builder3.mergeFrom(tagList2);
                                        this.docTagList_ = builder3.buildPartial();
                                    }
                                } else if (readTag == 34) {
                                    PageTagProto.PageTagList pageTagList = this.pageTagList_;
                                    PageTagProto.PageTagList.Builder builder4 = pageTagList != null ? pageTagList.toBuilder() : null;
                                    PageTagProto.PageTagList pageTagList2 = (PageTagProto.PageTagList) codedInputStream.readMessage(PageTagProto.PageTagList.parser(), extensionRegistryLite);
                                    this.pageTagList_ = pageTagList2;
                                    if (builder4 != null) {
                                        builder4.mergeFrom(pageTagList2);
                                        this.pageTagList_ = builder4.buildPartial();
                                    }
                                } else if (readTag == 42) {
                                    ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList = this.excerptCollectionList_;
                                    ExcerptCollectionProto.ExcerptCollectionList.Builder builder5 = excerptCollectionList != null ? excerptCollectionList.toBuilder() : null;
                                    ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList2 = (ExcerptCollectionProto.ExcerptCollectionList) codedInputStream.readMessage(ExcerptCollectionProto.ExcerptCollectionList.parser(), extensionRegistryLite);
                                    this.excerptCollectionList_ = excerptCollectionList2;
                                    if (builder5 != null) {
                                        builder5.mergeFrom(excerptCollectionList2);
                                        this.excerptCollectionList_ = builder5.buildPartial();
                                    }
                                } else if (readTag == 50) {
                                    NoteInfoProto.NoteInfoList noteInfoList = this.noteInfoList_;
                                    NoteInfoProto.NoteInfoList.Builder builder6 = noteInfoList != null ? noteInfoList.toBuilder() : null;
                                    NoteInfoProto.NoteInfoList noteInfoList2 = (NoteInfoProto.NoteInfoList) codedInputStream.readMessage(NoteInfoProto.NoteInfoList.parser(), extensionRegistryLite);
                                    this.noteInfoList_ = noteInfoList2;
                                    if (builder6 != null) {
                                        builder6.mergeFrom(noteInfoList2);
                                        this.noteInfoList_ = builder6.buildPartial();
                                    }
                                } else if (readTag != 58) {
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    TagProto.TagList tagList3 = this.tagList_;
                                    TagProto.TagList.Builder builder7 = tagList3 != null ? tagList3.toBuilder() : null;
                                    TagProto.TagList tagList4 = (TagProto.TagList) codedInputStream.readMessage(TagProto.TagList.parser(), extensionRegistryLite);
                                    this.tagList_ = tagList4;
                                    if (builder7 != null) {
                                        builder7.mergeFrom(tagList4);
                                        this.tagList_ = builder7.buildPartial();
                                    }
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static DataCollection parseFrom(InputStream inputStream) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DataCollection parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DataCollection parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static DataCollection parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface DataCollectionOrBuilder extends MessageOrBuilder {
        CoverProto.CoverList getCoverList();

        CoverProto.CoverListOrBuilder getCoverListOrBuilder();

        TagProto.TagList getDocTagList();

        TagProto.TagListOrBuilder getDocTagListOrBuilder();

        ExcerptCollectionProto.ExcerptCollectionList getExcerptCollectionList();

        ExcerptCollectionProto.ExcerptCollectionListOrBuilder getExcerptCollectionListOrBuilder();

        NoteInfoProto.NoteInfoList getNoteInfoList();

        NoteInfoProto.NoteInfoListOrBuilder getNoteInfoListOrBuilder();

        PageTagProto.PageTagList getPageTagList();

        PageTagProto.PageTagListOrBuilder getPageTagListOrBuilder();

        TagProto.TagList getTagList();

        TagProto.TagListOrBuilder getTagListOrBuilder();

        TemplateProto.TemplateList getTemplateList();

        TemplateProto.TemplateListOrBuilder getTemplateListOrBuilder();

        boolean hasCoverList();

        boolean hasDocTagList();

        boolean hasExcerptCollectionList();

        boolean hasNoteInfoList();

        boolean hasPageTagList();

        boolean hasTagList();

        boolean hasTemplateList();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.UserDataProto$a */
    /* loaded from: classes8.dex */
    public class C7788a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = UserDataProto.f45894c = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0013UserDataProto.proto\u001a\u0013TemplateProto.proto\u001a\u0010CoverProto.proto\u001a\u000eTagProto.proto\u001a\u0012PageTagProto.proto\u001a\u001cExcerptCollectionProto.proto\u001a\u0013NoteInfoProto.proto\"\u008c\u0002\n\u000eDataCollection\u0012#\n\ftemplateList\u0018\u0001 \u0001(\u000b2\r.TemplateList\u0012\u001d\n\tcoverList\u0018\u0002 \u0001(\u000b2\n.CoverList\u0012\u001c\n\ndocTagList\u0018\u0003 \u0001(\u000b2\b.TagList\u0012!\n\u000bpageTagList\u0018\u0004 \u0001(\u000b2\f.PageTagList\u00125\n\u0015excerptCollectionList\u0018\u0005 \u0001(\u000b2\u0016.ExcerptCollectionList\u0012#\n\fnoteInfoList\u0018\u0006 \u0001(\u000b2\r.NoteInfoList\u0012\u0019\n\u0007tagList\u0018\u0007 \u0001(\u000b2\b.TagListB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[]{TemplateProto.getDescriptor(), CoverProto.getDescriptor(), TagProto.getDescriptor(), PageTagProto.getDescriptor(), ExcerptCollectionProto.getDescriptor(), NoteInfoProto.getDescriptor()}, new C7788a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45892a = descriptor;
        f45893b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"TemplateList", "CoverList", "DocTagList", "PageTagList", "ExcerptCollectionList", "NoteInfoList", "TagList"});
        TemplateProto.getDescriptor();
        CoverProto.getDescriptor();
        TagProto.getDescriptor();
        PageTagProto.getDescriptor();
        ExcerptCollectionProto.getDescriptor();
        NoteInfoProto.getDescriptor();
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45894c;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
