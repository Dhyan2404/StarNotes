.class public final Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;,
        Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDocOrBuilder;,
        Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;,
        Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageOrBuilder;,
        Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;,
        Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageListOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field public static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field public static final d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static final e:Lcom/google/protobuf/Descriptors$Descriptor;

.field public static final f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static g:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const-string v0, "\n\u0019VirtualDocPageProto.proto\".\n\u000fVirtualPageList\u0012\u001b\n\u0005proto\u0018\u0001 \u0003(\u000b2\u000c.VirtualPage\"\u00ae\u0003\n\u000bVirtualPage\u0012\u000e\n\u0006pageId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u0012\n\norderIndex\u0018\u0004 \u0001(\u0002\u0012\u000e\n\u0006status\u0018\u0005 \u0001(\u0005\u0012\u0010\n\u0008pageSize\u0018\u0006 \u0001(\t\u0012\u001a\n\u0012pageSizeWithMargin\u0018\u0007 \u0001(\t\u0012\u0017\n\u000fcontentPageSize\u0018\u0008 \u0001(\t\u0012\u0013\n\u000bcontentType\u0018\t \u0001(\t\u0012\u0013\n\u000bcontentPath\u0018\n \u0001(\t\u0012\u0015\n\rcontentPageId\u0018\u000b \u0001(\t\u0012\u0011\n\tcontentId\u0018\u000c \u0001(\t\u0012\u0010\n\u0008pipeline\u0018\r \u0001(\t\u0012\u0012\n\ncolorTheme\u0018\u000e \u0001(\u0005\u0012\u0013\n\u000bmarginColor\u0018\u000f \u0001(\u0005\u0012\u001e\n\u0016marginTemplateResource\u0018\u0010 \u0001(\t\u0012\u001b\n\u0013marginTemplateSpace\u0018\u0011 \u0001(\u0002\u0012 \n\u0018marginTemplateResourceId\u0018\u0012 \u0001(\t\u0012\u0010\n\u0008rotation\u0018\u0013 \u0001(\u0002\"\u00d1\u0001\n\nVirtualDoc\u0012\u0010\n\u0008uniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u0012\n\nviewportId\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bactualScale\u0018\u0005 \u0001(\u0002\u0012\u000f\n\u0007offsetX\u0018\u0006 \u0001(\u0002\u0012\u000f\n\u0007offsetY\u0018\u0007 \u0001(\u0002\u0012\u0013\n\u000bcoverPageId\u0018\u0008 \u0001(\t\u0012\u0017\n\u000fdefaultTemplate\u0018\t \u0001(\t\u0012\u0012\n\ndocOptions\u0018\n \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$a;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Proto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "PageId"

    const-string v3, "CreatedAt"

    const-string v4, "UpdatedAt"

    const-string v5, "OrderIndex"

    const-string v6, "Status"

    const-string v7, "PageSize"

    const-string v8, "PageSizeWithMargin"

    const-string v9, "ContentPageSize"

    const-string v10, "ContentType"

    const-string v11, "ContentPath"

    const-string v12, "ContentPageId"

    const-string v13, "ContentId"

    const-string v14, "Pipeline"

    const-string v15, "ColorTheme"

    const-string v16, "MarginColor"

    const-string v17, "MarginTemplateResource"

    const-string v18, "MarginTemplateSpace"

    const-string v19, "MarginTemplateResourceId"

    const-string v20, "Rotation"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "UniqueId"

    const-string v3, "CreatedAt"

    const-string v4, "UpdatedAt"

    const-string v5, "ViewportId"

    const-string v6, "ActualScale"

    const-string v7, "OffsetX"

    const-string v8, "OffsetY"

    const-string v9, "CoverPageId"

    const-string v10, "DefaultTemplate"

    const-string v11, "DocOptions"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic g(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
