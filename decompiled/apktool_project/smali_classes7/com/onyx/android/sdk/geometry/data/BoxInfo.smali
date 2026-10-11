.class public final Lcom/onyx/android/sdk/geometry/data/BoxInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoxInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxInfo.kt\ncom/onyx/android/sdk/geometry/data/BoxInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0084\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u000f\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\tB/\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000fJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010E\u001a\u00020\u000bJ\u0006\u0010F\u001a\u00020\u000bJ\u0006\u0010G\u001a\u00020\u0016J\u0006\u0010H\u001a\u00020\u0000J\u000e\u0010I\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0006J\u000e\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0006J\u0006\u0010L\u001a\u00020MJ\u0006\u0010N\u001a\u00020\u0004J\u0006\u0010O\u001a\u00020\u0006J\u0006\u0010P\u001a\u00020\u0004J\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u00020\u0000J\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020VJ\u0006\u0010W\u001a\u00020TJ\u0006\u0010X\u001a\u00020\u0006J\u0006\u0010Y\u001a\u00020\u0004J\u0006\u0010Z\u001a\u00020[J\u000e\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020\u0000J\u0006\u0010^\u001a\u00020\u000bJ\u0018\u0010_\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u00002\u0008\u0008\u0002\u0010`\u001a\u00020\u000bJ\u000e\u0010a\u001a\u00020[2\u0006\u0010R\u001a\u00020\u0000J\u0006\u0010b\u001a\u00020[J\u000e\u0010c\u001a\u00020[2\u0006\u0010R\u001a\u00020\u0000J\u000e\u0010d\u001a\u00020[2\u0006\u0010R\u001a\u00020\u0000J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010e\u001a\u00020fJ\u0016\u0010g\u001a\u00020f2\u0006\u0010h\u001a\u00020\u000b2\u0006\u0010i\u001a\u00020\u000bJ\u000e\u0010j\u001a\u00020f2\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010k\u001a\u00020f2\u0006\u0010\r\u001a\u00020\u000bJ\u0016\u0010l\u001a\u00020f2\u0006\u0010m\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020\u000bJ\u0016\u0010o\u001a\u00020f2\u0006\u0010m\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020\u000bJ\u0006\u0010p\u001a\u00020fJ\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010q\u001a\u00020\u0016J\u0018\u0010r\u001a\u00020f2\u0006\u0010J\u001a\u00020\u00062\u0008\u0008\u0002\u0010s\u001a\u00020[J\u000e\u0010t\u001a\u00020f2\u0006\u0010J\u001a\u00020\u0006J\u0018\u0010u\u001a\u00020f2\u0006\u0010J\u001a\u00020\u00062\u0008\u0008\u0002\u0010s\u001a\u00020[J\u000e\u0010v\u001a\u00020f2\u0006\u0010w\u001a\u00020\u000bJ\u0006\u0010x\u001a\u00020yJ\u0006\u0010z\u001a\u00020\u0006J\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010{\u001a\u00020\u00002\u0006\u0010|\u001a\u00020\u0000J\u0010\u0010}\u001a\u00020f2\u0006\u0010~\u001a\u00020\u0000H\u0002J\u0010\u0010\u007f\u001a\u00020f2\u0006\u0010~\u001a\u00020\u0000H\u0002J\u0007\u0010\u0080\u0001\u001a\u00020fJ\u000f\u0010\u0081\u0001\u001a\u00020f2\u0006\u0010J\u001a\u00020\u0006J\u0019\u0010\u0082\u0001\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u00002\u0008\u0008\u0002\u0010`\u001a\u00020\u000bJ\u0007\u0010\u0083\u0001\u001a\u00020\u000bR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010\tR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010!\"\u0004\u00085\u0010\tR\u001a\u00106\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u001c\"\u0004\u00088\u0010\u001eR\u001a\u00109\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001c\"\u0004\u0008;\u0010\u001eR\u001a\u0010<\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0012\"\u0004\u0008>\u0010\u0014R\u001a\u0010?\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0018\"\u0004\u0008A\u0010\u001aR\u001a\u0010B\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u001c\"\u0004\u0008D\u0010\u001e\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "",
        "()V",
        "id",
        "",
        "box",
        "Landroid/graphics/RectF;",
        "(Ljava/lang/String;Landroid/graphics/RectF;)V",
        "srcBox",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "(Ljava/lang/String;FFFF)V",
        "actualScale",
        "getActualScale",
        "()F",
        "setActualScale",
        "(F)V",
        "align",
        "",
        "getAlign",
        "()I",
        "setAlign",
        "(I)V",
        "getBox",
        "()Landroid/graphics/RectF;",
        "setBox",
        "(Landroid/graphics/RectF;)V",
        "contentInfo",
        "getContentInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setContentInfo",
        "extraInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;",
        "getExtraInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;",
        "setExtraInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;)V",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "marginStyle",
        "Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "getMarginStyle",
        "()Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "setMarginStyle",
        "(Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V",
        "noteInfo",
        "getNoteInfo",
        "setNoteInfo",
        "originRectF",
        "getOriginRectF",
        "setOriginRectF",
        "originRectFWithMargin",
        "getOriginRectFWithMargin",
        "setOriginRectFWithMargin",
        "rotation",
        "getRotation",
        "setRotation",
        "scaleMode",
        "getScaleMode",
        "setScaleMode",
        "visibleRect",
        "getVisibleRect",
        "setVisibleRect",
        "centerX",
        "centerY",
        "columnIndex",
        "copy",
        "displayScale",
        "viewport",
        "getActualScaleOfScaleToPageWithAspectScaleCheck",
        "getCellInfoCopy",
        "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
        "getCellKey",
        "getCellOriginRectFCopy",
        "getDebugString",
        "getIntersectRectF",
        "anotherBox",
        "getMarginDisplayPixel",
        "Lcom/onyx/android/sdk/geometry/data/MarginPixel;",
        "getMarginPercent",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "getMarginPixel",
        "getScaledRectWithMargin",
        "getVisibleDebugString",
        "hasMargin",
        "",
        "hasSameVisibility",
        "boxInfo",
        "height",
        "horCheck",
        "gap",
        "intersect",
        "isNaNBox",
        "isVisibleIntersectHeight",
        "isVisibleIntersectWidth",
        "logNaNTrace",
        "",
        "moveTo",
        "x",
        "y",
        "moveToBottom",
        "moveToRight",
        "offset",
        "dx",
        "dy",
        "offsetTo",
        "offsetToOrigin",
        "rowIndex",
        "scaleToViewport",
        "alignOrigin",
        "scaleToViewportWidth",
        "scaleToViewportWithAspectScaleCheck",
        "setScale",
        "scale",
        "size",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "toZeroOriginRoundRectF",
        "translate",
        "origin",
        "updateChildDisplayRectF",
        "child",
        "updateChildInfoVisibleRect",
        "updateChildrenDisplayRectF",
        "updateVisibleRect",
        "verCheck",
        "width",
        "Companion",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBoxInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxInfo.kt\ncom/onyx/android/sdk/geometry/data/BoxInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x3

.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCALE_MODE_SCALE_TO_HEIGHT:I = 0x3

.field public static final SCALE_MODE_SCALE_TO_PAGE:I = 0x1

.field public static final SCALE_MODE_SCALE_TO_WIDTH:I = 0x2


# instance fields
.field private actualScale:F

.field private align:I

.field private box:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private noteInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private originRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private originRectFWithMargin:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rotation:F

.field private scaleMode:I

.field private visibleRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    .line 10
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 24
    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    .line 32
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    .line 33
    iget-object v0, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    .line 34
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 36
    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    .line 44
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    .line 45
    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    .line 46
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "box"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 12
    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    .line 20
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    .line 21
    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    .line 22
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic horCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;FILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->horCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I

    move-result p0

    return p0
.end method

.method public static synthetic scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public static synthetic scaleToViewportWithAspectScaleCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private final updateChildDisplayRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    iput v1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, p0}, Landroid/graphics/RectF;->offset(FF)V

    iput-object v1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, p0}, Landroid/graphics/RectF;->offset(FF)V

    iput v1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    iput-object v0, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private final updateChildInfoVisibleRect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    mul-float/2addr v2, p0

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->centerAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object p0, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    return-void
.end method

.method public static synthetic verCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;FILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->verCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bottom()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    return p0
.end method

.method public final centerX()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    return p0
.end method

.method public final centerY()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    return p0
.end method

.method public final columnIndex()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getBoxCellInfo()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->getColumnIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->noteInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->noteInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->contentInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->contentInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->copy()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfoKt;->copyOrNull(Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;)Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->rotation:F

    iput p0, v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->rotation:F

    return-object v0
.end method

.method public final displayScale(Landroid/graphics/RectF;)F
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScaleOfScaleToPageWithAspectScaleCheck(Landroid/graphics/RectF;)F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getActualScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    return p0
.end method

.method public final getActualScaleOfScaleToPageWithAspectScaleCheck(Landroid/graphics/RectF;)F
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 p0, 0x2

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, p0, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageWithAspectScaleCheck$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final getAlign()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    return p0
.end method

.method public final getBox()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCellInfoCopy()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getBoxCellInfo()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, v2, v2, v1, v0}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->copy$default(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;IIILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    invoke-direct {p0, v2, v2, v1, v0}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    return-object p0
.end method

.method public final getCellKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getBoxCellInfo()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;->key(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCellOriginRectFCopy()Landroid/graphics/RectF;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->columnIndex()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->rowIndex()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object p0
.end method

.method public final getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->contentInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getDebugString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", originRectWithMargin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", box = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getExtraInfo()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getIntersectRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "anotherBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    return-object p0
.end method

.method public final getMarginDisplayPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;->scale(F)V

    return-object v0
.end method

.method public final getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;->toMarginPercent(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object p0

    return-object p0
.end method

.method public final getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, v1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public final getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    return-object p0
.end method

.method public final getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->noteInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getOriginRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getOriginRectFWithMargin()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getRotation()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->rotation:F

    return p0
.end method

.method public final getScaleMode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    return p0
.end method

.method public final getScaledRectWithMargin()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public final getVisibleDebugString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visibleRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVisibleRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final hasMargin()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hasSameVisibility(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    iget v2, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final height()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    return p0
.end method

.method public final horCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anotherBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {v0, v1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasHorizontalOverlapWith(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final intersect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anotherBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0, p1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final isNaNBox()Z
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNaN(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isVisibleIntersectHeight(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anotherBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVisibleIntersectWidth(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anotherBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final left()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    return p0
.end method

.method public final logNaNTrace()V
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "boxInfo, logNaNTrace"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final moveTo(FF)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public final moveToBottom(F)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v2

    sub-float v2, p1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final moveToRight(F)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v1

    sub-float v1, p1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final offset(FF)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->logNaNTrace()V

    return-void
.end method

.method public final offsetTo(FF)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->logNaNTrace()V

    return-void
.end method

.method public final offsetToOrigin()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offsetTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    return-void
.end method

.method public final right()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    return p0
.end method

.method public final rowIndex()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getBoxCellInfo()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->getRowIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final scaleToViewport(Landroid/graphics/RectF;Z)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    if-eqz p2, :cond_1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    return-void
.end method

.method public final scaleToViewportWidth(Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToWidth(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    return-void
.end method

.method public final scaleToViewportWithAspectScaleCheck(Landroid/graphics/RectF;Z)V
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageWithAspectScaleCheck$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)F

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    if-eqz p2, :cond_1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    return-void
.end method

.method public final setActualScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    return-void
.end method

.method public final setAlign(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->align:I

    return-void
.end method

.method public final setBox(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    return-void
.end method

.method public final setContentInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->contentInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setExtraInfo(Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public final setMarginStyle(Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MarginStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->marginStyle:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    return-void
.end method

.method public final setNoteInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->noteInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setOriginRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setOriginRectFWithMargin(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    return-void
.end method

.method public final setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->rotation:F

    return-void
.end method

.method public final setScale(F)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scale exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->actualScale:F

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->originRectFWithMargin:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    return-void
.end method

.method public final setScaleMode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleMode:I

    return-void
.end method

.method public final setVisibleRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final size()Lcom/onyx/android/sdk/base/data/Size;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    return-object v0
.end method

.method public final toZeroOriginRoundRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->toZeroOriginRoundRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final top()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    return p0
.end method

.method public final translate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result p1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p0
.end method

.method public final updateChildrenDisplayRectF()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->contentInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildDisplayRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->noteInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildDisplayRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :cond_1
    return-void
.end method

.method public final updateVisibleRect(Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->visibleRect:Landroid/graphics/RectF;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->translateCoordinates(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->contentInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildInfoVisibleRect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->noteInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildInfoVisibleRect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->extraInfo:Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->updateVisibleTimeStamp()V

    :cond_2
    return-void
.end method

.method public final verCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anotherBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->verCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)I

    move-result p0

    return p0
.end method

.method public final width()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->box:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0
.end method
