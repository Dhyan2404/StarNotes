.class public final Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;,
        Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoOrBuilder;,
        Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;,
        Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoListOrBuilder;
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
    .locals 49

    const-string v0, "\n\u0013NoteInfoProto.proto\"(\n\u000cNoteInfoList\u0012\u0018\n\u0005proto\u0018\u0001 \u0003(\u000b2\t.NoteInfo\"\u00e0\u0007\n\u0008NoteInfo\u0012\u0010\n\u0008uniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u0016\n\u000eparentUniqueId\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bsubPageName\u0018\u0005 \u0001(\t\u0012\r\n\u0005title\u0018\u0006 \u0001(\t\u0012\u0017\n\u000fextraAttributes\u0018\u0007 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0008 \u0001(\u0005\u0012\u0013\n\u000bstrokeWidth\u0018\t \u0001(\u0002\u0012\u0013\n\u000beraserWidth\u0018\n \u0001(\u0002\u0012\u0013\n\u000bnotePenInfo\u0018\u000b \u0001(\t\u0012\u0014\n\u000cnotePageInfo\u0018\u000c \u0001(\t\u0012\u0016\n\u000enoteBackground\u0018\r \u0001(\t\u0012\u0012\n\ndeviceInfo\u0018\u000e \u0001(\t\u0012\u0013\n\u000bstrokeColor\u0018\u000f \u0001(\u0005\u0012\u0018\n\u0010currentShapeType\u0018\u0010 \u0001(\u0005\u0012\u0012\n\nbackground\u0018\u0011 \u0001(\u0005\u0012\u001c\n\u0014lineLayoutBackground\u0018\u0012 \u0001(\u0005\u0012\u0010\n\u0008position\u0018\u0013 \u0001(\u0005\u0012\u0014\n\u000cpageNameList\u0018\u0014 \u0001(\t\u0012\u001c\n\u0014richTextPageNameList\u0018\u0015 \u0001(\t\u0012\u0017\n\u000fpageOriginWidth\u0018\u0016 \u0001(\u0002\u0012\u0018\n\u0010pageOriginHeight\u0018\u0017 \u0001(\u0002\u0012\u000e\n\u0006source\u0018\u0018 \u0001(\t\u0012\u0015\n\rassociateDate\u0018\u0019 \u0001(\t\u0012\u0013\n\u000basyncStatus\u0018\u001a \u0001(\u0005\u0012\u0016\n\u000eencryptionType\u0018\u001b \u0001(\u0005\u0012\u000e\n\u0006digest\u0018\u001c \u0001(\t\u0012\u0015\n\rassociationId\u0018\u001d \u0001(\t\u0012\u0017\n\u000fassociationType\u0018\u001e \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u001f \u0001(\u0005\u0012\u0015\n\rcloudNoteSize\u0018  \u0001(\u0003\u0012\u0016\n\u000ecloudUpdatedAt\u0018! \u0001(\u0003\u0012\u0010\n\u0008commitId\u0018\" \u0001(\t\u0012\u0012\n\nembeddedAt\u0018# \u0001(\u0003\u0012\u0010\n\u0008syncFrom\u0018$ \u0001(\u0005\u0012\u0016\n\u000enoteSyncStatus\u0018% \u0001(\u0005\u0012\u0010\n\u0008favorite\u0018& \u0001(\u0005\u0012\u000e\n\u0006userId\u0018\' \u0001(\t\u0012\u000f\n\u0007version\u0018( \u0001(\u0005\u0012\u000f\n\u0007groupId\u0018) \u0001(\t\u0012\u0014\n\u000cthumbnailRes\u0018* \u0001(\t\u0012\u0013\n\u000bactiveScene\u0018+ \u0001(\u0005\u0012\u0016\n\u000eremovePageList\u0018, \u0001(\t\u0012\u0011\n\ttagIdList\u0018- \u0001(\t\u0012\r\n\u0005style\u0018. \u0001(\t\u0012\u0012\n\norderIndex\u0018/ \u0001(\u0002B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$a;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Proto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "UniqueId"

    const-string v3, "CreatedAt"

    const-string v4, "UpdatedAt"

    const-string v5, "ParentUniqueId"

    const-string v6, "SubPageName"

    const-string v7, "Title"

    const-string v8, "ExtraAttributes"

    const-string v9, "Type"

    const-string v10, "StrokeWidth"

    const-string v11, "EraserWidth"

    const-string v12, "NotePenInfo"

    const-string v13, "NotePageInfo"

    const-string v14, "NoteBackground"

    const-string v15, "DeviceInfo"

    const-string v16, "StrokeColor"

    const-string v17, "CurrentShapeType"

    const-string v18, "Background"

    const-string v19, "LineLayoutBackground"

    const-string v20, "Position"

    const-string v21, "PageNameList"

    const-string v22, "RichTextPageNameList"

    const-string v23, "PageOriginWidth"

    const-string v24, "PageOriginHeight"

    const-string v25, "Source"

    const-string v26, "AssociateDate"

    const-string v27, "AsyncStatus"

    const-string v28, "EncryptionType"

    const-string v29, "Digest"

    const-string v30, "AssociationId"

    const-string v31, "AssociationType"

    const-string v32, "Status"

    const-string v33, "CloudNoteSize"

    const-string v34, "CloudUpdatedAt"

    const-string v35, "CommitId"

    const-string v36, "EmbeddedAt"

    const-string v37, "SyncFrom"

    const-string v38, "NoteSyncStatus"

    const-string v39, "Favorite"

    const-string v40, "UserId"

    const-string v41, "Version"

    const-string v42, "GroupId"

    const-string v43, "ThumbnailRes"

    const-string v44, "ActiveScene"

    const-string v45, "RemovePageList"

    const-string v46, "TagIdList"

    const-string v47, "Style"

    const-string v48, "OrderIndex"

    filled-new-array/range {v2 .. v48}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
