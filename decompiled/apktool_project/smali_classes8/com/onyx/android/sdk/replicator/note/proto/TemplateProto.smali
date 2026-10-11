.class public final Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;,
        Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateOrBuilder;,
        Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;,
        Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateListOrBuilder;
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
    .locals 17

    const-string v0, "\n\u0013TemplateProto.proto\"(\n\u000cTemplateList\u0012\u0018\n\u0005proto\u0018\u0001 \u0003(\u000b2\t.Template\"\u00a9\u0002\n\u0008Template\u0012\u0010\n\u0008uniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\r\n\u0005title\u0018\u0004 \u0001(\t\u0012\u0014\n\u000ctitleResName\u0018\u0005 \u0001(\t\u0012\u0013\n\u000borientation\u0018\u0006 \u0001(\u0005\u0012\u0012\n\nsizeFormat\u0018\u0007 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0008 \u0001(\u0005\u0012\u0014\n\u000cresourceList\u0018\t \u0001(\t\u0012\u0012\n\ncategoryId\u0018\n \u0001(\t\u0012\u0015\n\rcontentPageId\u0018\u000b \u0001(\t\u0012\u0014\n\u000ctemplateArgs\u0018\u000c \u0001(\t\u0012\u0012\n\norderIndex\u0018\r \u0001(\u0002\u0012\u000e\n\u0006source\u0018\u000e \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u000f \u0001(\u0005B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Proto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "UniqueId"

    const-string v3, "CreatedAt"

    const-string v4, "UpdatedAt"

    const-string v5, "Title"

    const-string v6, "TitleResName"

    const-string v7, "Orientation"

    const-string v8, "SizeFormat"

    const-string v9, "Type"

    const-string v10, "ResourceList"

    const-string v11, "CategoryId"

    const-string v12, "ContentPageId"

    const-string v13, "TemplateArgs"

    const-string v14, "OrderIndex"

    const-string v15, "Source"

    const-string v16, "Status"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
