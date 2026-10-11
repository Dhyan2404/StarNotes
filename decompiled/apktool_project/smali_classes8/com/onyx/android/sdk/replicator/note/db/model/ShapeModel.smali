.class public final Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u0097\u00012\u00020\u0001:\u0002\u0097\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0090\u0001\u001a\u00030\u0091\u0001J\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u0001J\u0013\u0010\u0093\u0001\u001a\u00030\u0094\u00012\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0004J\t\u0010\u0096\u0001\u001a\u00020\u0013H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\u001c\u0010!\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R\u001c\u0010$\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R\u001a\u0010\'\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000c\"\u0004\u0008)\u0010\u000eR\"\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u00100\u001a\u0004\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001c\u00106\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0015\"\u0004\u00088\u0010\u0017R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u00020@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001a\u0010E\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u000c\"\u0004\u0008G\u0010\u000eR\u001a\u0010H\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u000c\"\u0004\u0008J\u0010\u000eR\u001c\u0010K\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\u0015\"\u0004\u0008M\u0010\u0017R\u001a\u0010N\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u000c\"\u0004\u0008P\u0010\u000eR\u001c\u0010Q\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010\u0015\"\u0004\u0008S\u0010\u0017R\u001c\u0010T\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010\u0015\"\u0004\u0008V\u0010\u0017R\u001c\u0010W\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010\u0015\"\u0004\u0008Y\u0010\u0017R\u001a\u0010Z\u001a\u00020@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010B\"\u0004\u0008\\\u0010DR\u001a\u0010]\u001a\u00020@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010B\"\u0004\u0008_\u0010DR\u001c\u0010`\u001a\u0004\u0018\u00010aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u001c\u0010f\u001a\u0004\u0018\u00010gX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR\u001c\u0010l\u001a\u0004\u0018\u00010mX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR\u001a\u0010r\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010\u000c\"\u0004\u0008t\u0010\u000eR\u001a\u0010u\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010\u000c\"\u0004\u0008w\u0010\u000eR\u001c\u0010x\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008y\u0010\u0015\"\u0004\u0008z\u0010\u0017R\u001a\u0010{\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u0010\u000c\"\u0004\u0008}\u0010\u000eR#\u0010~\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010+X\u0086\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u0010-\"\u0005\u0008\u0080\u0001\u0010/R\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010\u0015\"\u0005\u0008\u0083\u0001\u0010\u0017R\"\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001d\u0010\u008a\u0001\u001a\u00020@X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008b\u0001\u0010B\"\u0005\u0008\u008c\u0001\u0010DR\u001d\u0010\u008d\u0001\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008e\u0001\u0010\u000c\"\u0005\u0008\u008f\u0001\u0010\u000e\u00a8\u0006\u0098\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "boundingRect",
        "Landroid/graphics/RectF;",
        "getBoundingRect",
        "()Landroid/graphics/RectF;",
        "setBoundingRect",
        "(Landroid/graphics/RectF;)V",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "coordType",
        "getCoordType",
        "setCoordType",
        "documentUniqueId",
        "",
        "getDocumentUniqueId",
        "()Ljava/lang/String;",
        "setDocumentUniqueId",
        "(Ljava/lang/String;)V",
        "extraAttributes",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;",
        "getExtraAttributes",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;",
        "setExtraAttributes",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V",
        "fillColor",
        "getFillColor",
        "setFillColor",
        "groupId",
        "getGroupId",
        "setGroupId",
        "infoRevisionId",
        "getInfoRevisionId",
        "setInfoRevisionId",
        "layoutType",
        "getLayoutType",
        "setLayoutType",
        "linkIdList",
        "",
        "getLinkIdList",
        "()Ljava/util/List;",
        "setLinkIdList",
        "(Ljava/util/List;)V",
        "matrixValues",
        "Lcom/onyx/android/sdk/base/data/MatrixValues;",
        "getMatrixValues",
        "()Lcom/onyx/android/sdk/base/data/MatrixValues;",
        "setMatrixValues",
        "(Lcom/onyx/android/sdk/base/data/MatrixValues;)V",
        "objectId",
        "getObjectId",
        "setObjectId",
        "options",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "getOptions",
        "()Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "setOptions",
        "(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V",
        "orientation",
        "",
        "getOrientation",
        "()F",
        "setOrientation",
        "(F)V",
        "pageOriginHeight",
        "getPageOriginHeight",
        "setPageOriginHeight",
        "pageOriginWidth",
        "getPageOriginWidth",
        "setPageOriginWidth",
        "pageUniqueId",
        "getPageUniqueId",
        "setPageUniqueId",
        "pointSaveType",
        "getPointSaveType",
        "setPointSaveType",
        "resourceId",
        "getResourceId",
        "setResourceId",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "richText",
        "getRichText",
        "setRichText",
        "rotationPointXCoordinate",
        "getRotationPointXCoordinate",
        "setRotationPointXCoordinate",
        "rotationPointYCoordinate",
        "getRotationPointYCoordinate",
        "setRotationPointYCoordinate",
        "shapeConnectionBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;",
        "getShapeConnectionBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;",
        "setShapeConnectionBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;)V",
        "shapeCreateArgs",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "getShapeCreateArgs",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "setShapeCreateArgs",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V",
        "shapeLineStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "getShapeLineStyle",
        "()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "setShapeLineStyle",
        "(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V",
        "shapeType",
        "getShapeType",
        "setShapeType",
        "status",
        "getStatus",
        "setStatus",
        "subPageName",
        "getSubPageName",
        "setSubPageName",
        "syncStatus",
        "getSyncStatus",
        "setSyncStatus",
        "tagIdList",
        "getTagIdList",
        "setTagIdList",
        "text",
        "getText",
        "setText",
        "textStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "getTextStyle",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "setTextStyle",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V",
        "thickness",
        "getThickness",
        "setThickness",
        "zorder",
        "getZorder",
        "setZorder",
        "hasShapeConnectData",
        "",
        "isEnabled",
        "setShapeBoundingRect",
        "",
        "rect",
        "toString",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private boundingRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private color:I

.field private coordType:I

.field private documentUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private extraAttributes:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fillColor:I

.field private groupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private infoRevisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutType:I

.field private linkIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private matrixValues:Lcom/onyx/android/sdk/base/data/MatrixValues;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private objectId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private options:Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private orientation:F

.field private pageOriginHeight:I

.field private pageOriginWidth:I

.field private pageUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pointSaveType:I

.field private resourceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private richText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rotationPointXCoordinate:F

.field private rotationPointYCoordinate:F

.field private shapeConnectionBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapeCreateArgs:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapeLineStyle:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapeType:I

.field private status:I

.field private subPageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private syncStatus:I

.field private tagIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textStyle:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private thickness:F

.field private zorder:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->documentUniqueId:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->coordType:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pointSaveType:I

    return-void
.end method


# virtual methods
.method public final getBoundingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->boundingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->color:I

    return p0
.end method

.method public final getCoordType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->coordType:I

    return p0
.end method

.method public final getDocumentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->documentUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtraAttributes()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->extraAttributes:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    return-object p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->fillColor:I

    return p0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public final getInfoRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->infoRevisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLayoutType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->layoutType:I

    return p0
.end method

.method public final getLinkIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->linkIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->matrixValues:Lcom/onyx/android/sdk/base/data/MatrixValues;

    return-object p0
.end method

.method public final getObjectId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method public final getOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->options:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-object p0
.end method

.method public final getOrientation()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->orientation:F

    return p0
.end method

.method public final getPageOriginHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pageOriginHeight:I

    return p0
.end method

.method public final getPageOriginWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pageOriginWidth:I

    return p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pageUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPointSaveType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pointSaveType:I

    return p0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRichText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->richText:Ljava/lang/String;

    return-object p0
.end method

.method public final getRotationPointXCoordinate()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->rotationPointXCoordinate:F

    return p0
.end method

.method public final getRotationPointYCoordinate()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->rotationPointYCoordinate:F

    return p0
.end method

.method public final getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeConnectionBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    return-object p0
.end method

.method public final getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeCreateArgs:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-object p0
.end method

.method public final getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeLineStyle:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    return-object p0
.end method

.method public final getShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeType:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->status:I

    return p0
.end method

.method public final getSubPageName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->subPageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->syncStatus:I

    return p0
.end method

.method public final getTagIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->tagIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->textStyle:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method

.method public final getThickness()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->thickness:F

    return p0
.end method

.method public final getZorder()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->zorder:I

    return p0
.end method

.method public final hasShapeConnectData()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeConnectionBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;->getReferenceShapeBeanList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureMutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final isEnabled()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setBoundingRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->boundingRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->color:I

    return-void
.end method

.method public final setCoordType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->coordType:I

    return-void
.end method

.method public final setDocumentUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->documentUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setExtraAttributes(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->extraAttributes:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->fillColor:I

    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->groupId:Ljava/lang/String;

    return-void
.end method

.method public final setInfoRevisionId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->infoRevisionId:Ljava/lang/String;

    return-void
.end method

.method public final setLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->layoutType:I

    return-void
.end method

.method public final setLinkIdList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->linkIdList:Ljava/util/List;

    return-void
.end method

.method public final setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/MatrixValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->matrixValues:Lcom/onyx/android/sdk/base/data/MatrixValues;

    return-void
.end method

.method public final setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->objectId:Ljava/lang/String;

    return-void
.end method

.method public final setOptions(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->options:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-void
.end method

.method public final setOrientation(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->orientation:F

    return-void
.end method

.method public final setPageOriginHeight(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pageOriginHeight:I

    return-void
.end method

.method public final setPageOriginWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pageOriginWidth:I

    return-void
.end method

.method public final setPageUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pageUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setPointSaveType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->pointSaveType:I

    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public final setRevisionId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setRichText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->richText:Ljava/lang/String;

    return-void
.end method

.method public final setRotationPointXCoordinate(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->rotationPointXCoordinate:F

    return-void
.end method

.method public final setRotationPointYCoordinate(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->rotationPointYCoordinate:F

    return-void
.end method

.method public final setShapeBoundingRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->boundingRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setShapeConnectionBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeConnectionBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    return-void
.end method

.method public final setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeCreateArgs:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-void
.end method

.method public final setShapeLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeLineStyle:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    return-void
.end method

.method public final setShapeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeType:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->status:I

    return-void
.end method

.method public final setSubPageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->subPageName:Ljava/lang/String;

    return-void
.end method

.method public final setSyncStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->syncStatus:I

    return-void
.end method

.method public final setTagIdList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->tagIdList:Ljava/util/List;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->text:Ljava/lang/String;

    return-void
.end method

.method public final setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->textStyle:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-void
.end method

.method public final setThickness(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->thickness:F

    return-void
.end method

.method public final setZorder(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->zorder:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "documentUniqueId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->documentUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",shapeUniqueId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->shapeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
