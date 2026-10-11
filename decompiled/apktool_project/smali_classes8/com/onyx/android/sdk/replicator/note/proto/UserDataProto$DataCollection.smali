.class public final Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;
    }
.end annotation


# static fields
.field public static final COVERLIST_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

.field public static final DOCTAGLIST_FIELD_NUMBER:I = 0x3

.field public static final EXCERPTCOLLECTIONLIST_FIELD_NUMBER:I = 0x5

.field public static final NOTEINFOLIST_FIELD_NUMBER:I = 0x6

.field public static final PAGETAGLIST_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAGLIST_FIELD_NUMBER:I = 0x7

.field public static final TEMPLATELIST_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

.field private docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

.field private excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

.field private memoizedIsInitialized:B

.field private noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

.field private pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

.field private tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

.field private templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_d

    const/16 v4, 0x12

    if-eq v2, v4, :cond_b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_9

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;

    move-result-object v5

    .line 14
    :cond_2
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;

    .line 16
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;

    move-result-object v5

    .line 19
    :cond_4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;

    .line 21
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    goto :goto_0

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList$Builder;

    move-result-object v5

    .line 24
    :cond_6
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;)Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList$Builder;

    .line 26
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    goto/16 :goto_0

    .line 27
    :cond_7
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList$Builder;

    move-result-object v5

    .line 29
    :cond_8
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;)Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList$Builder;

    .line 31
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    goto/16 :goto_0

    .line 32
    :cond_9
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v2, :cond_a

    .line 33
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;

    move-result-object v5

    .line 34
    :cond_a
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;

    .line 36
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    goto/16 :goto_0

    .line 37
    :cond_b
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    if-eqz v2, :cond_c

    .line 38
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList$Builder;

    move-result-object v5

    .line 39
    :cond_c
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    if-eqz v5, :cond_0

    .line 40
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;)Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList$Builder;

    .line 41
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    goto/16 :goto_0

    .line 42
    :cond_d
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    if-eqz v2, :cond_e

    .line 43
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList$Builder;

    move-result-object v5

    .line 44
    :cond_e
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList$Builder;

    .line 46
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 49
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 52
    throw p1

    .line 53
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;)Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    return-object p1
.end method

.method public static synthetic access$1202(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1400()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$602(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;)Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;)Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTemplateList()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTemplateList()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTemplateList()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTemplateList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTemplateList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasCoverList()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasCoverList()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasCoverList()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getCoverList()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getCoverList()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasDocTagList()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasDocTagList()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasDocTagList()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDocTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDocTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasPageTagList()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasPageTagList()Z

    move-result v2

    if-ne v1, v2, :cond_b

    move v1, v0

    goto :goto_6

    :cond_b
    move v1, v3

    :goto_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasPageTagList()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getPageTagList()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getPageTagList()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_7

    :cond_c
    move v1, v3

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasExcerptCollectionList()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasExcerptCollectionList()Z

    move-result v2

    if-ne v1, v2, :cond_e

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v3

    :goto_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasExcerptCollectionList()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getExcerptCollectionList()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getExcerptCollectionList()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_9

    :cond_f
    move v1, v3

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasNoteInfoList()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasNoteInfoList()Z

    move-result v2

    if-ne v1, v2, :cond_11

    move v1, v0

    goto :goto_a

    :cond_11
    move v1, v3

    :goto_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasNoteInfoList()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getNoteInfoList()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getNoteInfoList()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v0

    goto :goto_b

    :cond_12
    move v1, v3

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTagList()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTagList()Z

    move-result v2

    if-ne v1, v2, :cond_14

    move v1, v0

    goto :goto_c

    :cond_14
    move v1, v3

    :goto_c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTagList()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v0

    goto :goto_d

    :cond_15
    move v1, v3

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_e

    :cond_17
    move v0, v3

    :goto_e
    return v0
.end method

.method public getCoverList()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getCoverListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverListOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getCoverList()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    return-object p0
.end method

.method public getDocTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getDocTagListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagListOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDocTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object p0

    return-object p0
.end method

.method public getExcerptCollectionList()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getExcerptCollectionListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionListOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getExcerptCollectionList()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object p0

    return-object p0
.end method

.method public getNoteInfoList()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getNoteInfoListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoListOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getNoteInfoList()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object p0

    return-object p0
.end method

.method public getPageTagList()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPageTagListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagListOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getPageTagList()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object p0

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTemplateList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getCoverList()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDocTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getPageTagList()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getExcerptCollectionList()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getNoteInfoList()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getTagListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagListOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object p0

    return-object p0
.end method

.method public getTemplateList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getTemplateListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateListOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTemplateList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object p0

    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasCoverList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDocTagList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasExcerptCollectionList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNoteInfoList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPageTagList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTagList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTemplateList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTemplateList()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTemplateList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasCoverList()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getCoverList()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasDocTagList()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDocTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasPageTagList()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getPageTagList()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasExcerptCollectionList()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getExcerptCollectionList()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasNoteInfoList()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getNoteInfoList()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->hasTagList()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    mul-int/lit8 v1, v1, 0x1d

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;)Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->templateList_:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTemplateList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->coverList_:Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getCoverList()Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->docTagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getDocTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->pageTagList_:Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getPageTagList()Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->excerptCollectionList_:Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getExcerptCollectionList()Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->noteInfoList_:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getNoteInfoList()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->tagList_:Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;->getTagList()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
