.class public final Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;,
        Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfoOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field public static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "\n\u0014ExtraInfoProto.proto\"y\n\tExtraInfo\u0012\u0012\n\ndocVersion\u0018\u0001 \u0001(\u0005\u0012\u0016\n\u000eappVersionCode\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\t\u0012\u0012\n\ndocumentId\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014exportPdfPagesResult\u0018\u0005 \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$a;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "DocumentId"

    const-string v3, "ExportPdfPagesResult"

    const-string v4, "DocVersion"

    const-string v5, "AppVersionCode"

    const-string v6, "UserId"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
