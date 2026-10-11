.class public final Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProto;,
        Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProtoOrBuilder;,
        Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProtoList;,
        Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProtoListOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field public static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field public static final d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const-string v0, "\n\u0013LinkDataProto.proto\"*\n\rLinkProtoList\u0012\u0019\n\u0005proto\u0018\u0001 \u0003(\u000b2\n.LinkProto\"\u00ec\u0002\n\tLinkProto\u0012\u0010\n\u0008uniqueId\u0018\u0001 \u0001(\t\u0012\u0013\n\u000btargetDocId\u0018\u0002 \u0001(\t\u0012\u0012\n\ndocumentId\u0018\u0003 \u0001(\t\u0012\u0014\n\u000ctargetPageId\u0018\u0004 \u0001(\t\u0012\u0014\n\u000cpageUniqueId\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006userId\u0018\u0006 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0007 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0008 \u0001(\u0003\u0012\u000f\n\u0007content\u0018\t \u0001(\t\u0012\u000c\n\u0004type\u0018\n \u0001(\t\u0012\u000e\n\u0006remark\u0018\u000b \u0001(\t\u0012\r\n\u0005title\u0018\u000c \u0001(\t\u0012\u0014\n\u000cdisplayStyle\u0018\r \u0001(\u0005\u0012\u0017\n\u000ftargetPageIndex\u0018\u000e \u0001(\u0005\u0012\u000c\n\u0004path\u0018\u000f \u0001(\t\u0012\r\n\u0005extra\u0018\u0010 \u0001(\t\u0012\u000e\n\u0006status\u0018\u0011 \u0001(\u0005\u0012\u0014\n\u000cboundingRect\u0018\u0012 \u0001(\t\u0012\u0012\n\nrevisionId\u0018\u0013 \u0001(\tB*\n(com.onyx.android.sdk.scribble.data.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$a;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Proto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "UniqueId"

    const-string v3, "TargetDocId"

    const-string v4, "DocumentId"

    const-string v5, "TargetPageId"

    const-string v6, "PageUniqueId"

    const-string v7, "UserId"

    const-string v8, "CreatedAt"

    const-string v9, "UpdatedAt"

    const-string v10, "Content"

    const-string v11, "Type"

    const-string v12, "Remark"

    const-string v13, "Title"

    const-string v14, "DisplayStyle"

    const-string v15, "TargetPageIndex"

    const-string v16, "Path"

    const-string v17, "Extra"

    const-string v18, "Status"

    const-string v19, "BoundingRect"

    const-string v20, "RevisionId"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
