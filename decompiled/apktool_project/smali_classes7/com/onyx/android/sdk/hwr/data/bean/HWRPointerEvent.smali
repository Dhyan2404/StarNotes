.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$Companion;,
        Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008!\u0018\u0000 L2\u00020\u0001:\u0002LMB\t\u0008\u0017\u00a2\u0006\u0004\u0008G\u0010HB\u0011\u0008\u0016\u0012\u0006\u0010I\u001a\u00020\u0000\u00a2\u0006\u0004\u0008G\u0010JBA\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0019\u001a\u00020\u0012\u0012\u0006\u0010\u001d\u001a\u00020\u0012\u0012\u0006\u0010%\u001a\u00020\u001e\u0012\u0006\u0010)\u001a\u00020\u0012\u0012\u0006\u00104\u001a\u00020-\u0012\u0006\u0010;\u001a\u00020\u0005\u00a2\u0006\u0004\u0008G\u0010KJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0007R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010)\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0014\u001a\u0004\u0008\'\u0010\u0016\"\u0004\u0008(\u0010\u0018R\"\u0010,\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u0014\u001a\u0004\u0008*\u0010\u0016\"\u0004\u0008+\u0010\u0018R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\"\u0010;\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\"\u0010?\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010\u0014\u001a\u0004\u0008=\u0010\u0016\"\u0004\u0008>\u0010\u0018R\"\u0010F\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010E\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "",
        "",
        "toString",
        "other",
        "",
        "pxThreshold",
        "",
        "near",
        "isEmpty",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;",
        "a",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;",
        "getEventType",
        "()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;",
        "setEventType",
        "(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V",
        "eventType",
        "",
        "b",
        "F",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "x",
        "c",
        "getY",
        "setY",
        "y",
        "",
        "d",
        "J",
        "getT",
        "()J",
        "setT",
        "(J)V",
        "t",
        "e",
        "getF",
        "setF",
        "f",
        "getW",
        "setW",
        "w",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;",
        "g",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;",
        "getPointerType",
        "()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;",
        "setPointerType",
        "(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;)V",
        "pointerType",
        "h",
        "I",
        "getPointerId",
        "()I",
        "setPointerId",
        "(I)V",
        "pointerId",
        "i",
        "getSlope",
        "setSlope",
        "slope",
        "j",
        "Ljava/lang/String;",
        "getStrokeId",
        "()Ljava/lang/String;",
        "setStrokeId",
        "(Ljava/lang/String;)V",
        "strokeId",
        "<init>",
        "()V",
        "event",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)V",
        "(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;FFJFLcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;I)V",
        "Companion",
        "HWRPointEventList",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:J

.field public e:F

.field public f:F

.field public g:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:I

.field public i:F

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$Companion;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;->PEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->g:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->j:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->CANCEL:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    iput-object v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    .line 6
    iput v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->d:J

    .line 8
    iput v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->e:F

    .line 9
    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->g:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    iget v3, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    iget v4, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    iget-wide v5, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->d:J

    iget v7, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->e:F

    .line 12
    iget-object v8, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->g:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    iget v9, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->h:I

    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;FFJFLcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;I)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;FFJFLcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;->PEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->j:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    .line 18
    iput p2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    .line 19
    iput p3, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    .line 20
    iput-wide p4, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->d:J

    .line 21
    iput p6, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->e:F

    .line 22
    iput-object p7, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->g:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    .line 23
    iput p8, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->h:I

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    return-object v0
.end method


# virtual methods
.method public final getEventType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    return-object p0
.end method

.method public final getF()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->e:F

    return p0
.end method

.method public final getPointerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->h:I

    return p0
.end method

.method public final getPointerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->g:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    return-object p0
.end method

.method public final getSlope()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->i:F

    return p0
.end method

.method public final getStrokeId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getT()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->d:J

    return-wide v0
.end method

.method public final getW()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->f:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final near(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;I)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    iget v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p2, p2

    cmpg-float v0, v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget p1, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    return-void
.end method

.method public final setF(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->e:F

    return-void
.end method

.method public final setPointerId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->h:I

    return-void
.end method

.method public final setPointerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->g:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    return-void
.end method

.method public final setSlope(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->i:F

    return-void
.end method

.method public final setStrokeId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->j:Ljava/lang/String;

    return-void
.end method

.method public final setT(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->d:J

    return-void
.end method

.method public final setW(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->f:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->c:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
