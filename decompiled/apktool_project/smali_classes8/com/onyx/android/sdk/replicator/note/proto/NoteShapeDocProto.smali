.class public final Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;,
        Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoOrBuilder;,
        Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;,
        Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoListOrBuilder;
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
    .locals 28

    const-string v0, "\n\u0017NoteShapeDocProto.proto\"4\n\u0012ShapeInfoProtoList\u0012\u001e\n\u0005proto\u0018\u0001 \u0003(\u000b2\u000f.ShapeInfoProto\"\u00fc\u0003\n\u000eShapeInfoProto\u0012\u0010\n\u0008uniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\r\n\u0005color\u0018\u0004 \u0001(\u0005\u0012\u0011\n\tthickness\u0018\u0005 \u0001(\u0002\u0012\u000e\n\u0006zorder\u0018\u0006 \u0001(\u0005\u0012\u0014\n\u000cboundingRect\u0018\u0007 \u0001(\t\u0012\u0014\n\u000cmatrixValues\u0018\u0008 \u0001(\t\u0012\u0011\n\ttextStyle\u0018\t \u0001(\t\u0012\u000c\n\u0004text\u0018\n \u0001(\t\u0012\u0012\n\ncreateArgs\u0018\u000b \u0001(\t\u0012\u0011\n\tshapeType\u0018\u000c \u0001(\u0005\u0012\u000f\n\u0007groupId\u0018\r \u0001(\t\u0012\u0010\n\u0008resource\u0018\u000e \u0001(\t\u0012\u0013\n\u000bshapeStatus\u0018\u000f \u0001(\u0005\u0012\u0012\n\nrevisionId\u0018\u0010 \u0001(\t\u0012\u0011\n\tlineStyle\u0018\u0011 \u0001(\t\u0012\u0016\n\u000einfoRevisionId\u0018\u0012 \u0001(\t\u0012\u0011\n\ttagIdList\u0018\u0013 \u0001(\t\u0012\r\n\u0005extra\u0018\u0014 \u0001(\t\u0012\u0012\n\nlinkIdList\u0018\u0015 \u0001(\t\u0012\u0010\n\u0008richText\u0018\u0016 \u0001(\t\u0012\u0011\n\tfillColor\u0018\u0017 \u0001(\u0005\u0012\u000f\n\u0007options\u0018\u0018 \u0001(\t\u0012\u0011\n\tpointList\u0018\u0019 \u0001(\u000c\u0012\u0016\n\u000econnectionBean\u0018\u001a \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$a;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Proto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "UniqueId"

    const-string v3, "CreatedAt"

    const-string v4, "UpdatedAt"

    const-string v5, "Color"

    const-string v6, "Thickness"

    const-string v7, "Zorder"

    const-string v8, "BoundingRect"

    const-string v9, "MatrixValues"

    const-string v10, "TextStyle"

    const-string v11, "Text"

    const-string v12, "CreateArgs"

    const-string v13, "ShapeType"

    const-string v14, "GroupId"

    const-string v15, "Resource"

    const-string v16, "ShapeStatus"

    const-string v17, "RevisionId"

    const-string v18, "LineStyle"

    const-string v19, "InfoRevisionId"

    const-string v20, "TagIdList"

    const-string v21, "Extra"

    const-string v22, "LinkIdList"

    const-string v23, "RichText"

    const-string v24, "FillColor"

    const-string v25, "Options"

    const-string v26, "PointList"

    const-string v27, "ConnectionBean"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
