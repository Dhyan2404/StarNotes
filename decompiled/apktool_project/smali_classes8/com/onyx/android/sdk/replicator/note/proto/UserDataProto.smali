.class public final Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;,
        Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollectionOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field public static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "\n\u0013UserDataProto.proto\u001a\u0013TemplateProto.proto\u001a\u0010CoverProto.proto\u001a\u000eTagProto.proto\u001a\u0012PageTagProto.proto\u001a\u001cExcerptCollectionProto.proto\u001a\u0013NoteInfoProto.proto\"\u008c\u0002\n\u000eDataCollection\u0012#\n\u000ctemplateList\u0018\u0001 \u0001(\u000b2\r.TemplateList\u0012\u001d\n\tcoverList\u0018\u0002 \u0001(\u000b2\n.CoverList\u0012\u001c\n\ndocTagList\u0018\u0003 \u0001(\u000b2\u0008.TagList\u0012!\n\u000bpageTagList\u0018\u0004 \u0001(\u000b2\u000c.PageTagList\u00125\n\u0015excerptCollectionList\u0018\u0005 \u0001(\u000b2\u0016.ExcerptCollectionList\u0012#\n\u000cnoteInfoList\u0018\u0006 \u0001(\u000b2\r.NoteInfoList\u0012\u0019\n\u0007tagList\u0018\u0007 \u0001(\u000b2\u0008.TagListB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$a;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$a;-><init>()V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v6

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "TemplateList"

    const-string v3, "CoverList"

    const-string v4, "DocTagList"

    const-string v5, "PageTagList"

    const-string v6, "ExcerptCollectionList"

    const-string v7, "NoteInfoList"

    const-string v8, "TagList"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/CoverProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
