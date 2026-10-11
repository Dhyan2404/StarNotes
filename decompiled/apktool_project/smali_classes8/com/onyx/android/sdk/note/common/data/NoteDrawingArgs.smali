.class public final Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008)\u0008\u0086\u0008\u0018\u00002\u00020\u0001B[\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008L\u0010MJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\u0008\u0010\u0005\u001a\u00020\u0000H\u0016J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u000cJ\t\u0010\u000f\u001a\u00020\u000eH\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0010H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0010H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0010H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u000eH\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J]\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00102\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0017H\u00c6\u0001J\t\u0010#\u001a\u00020\"H\u00d6\u0001J\t\u0010$\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010\'\u001a\u00020\u000c2\u0008\u0010&\u001a\u0004\u0018\u00010%H\u00d6\u0003R\"\u0010\u0019\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u0010\u001a\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\"\u0010\u001b\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010/\u001a\u0004\u00085\u00101\"\u0004\u00086\u00103R\"\u0010\u001c\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010/\u001a\u0004\u00088\u00101\"\u0004\u00089\u00103R\"\u0010\u001d\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010)\u001a\u0004\u0008;\u0010+\"\u0004\u0008<\u0010-R\"\u0010\u001e\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010/\u001a\u0004\u0008>\u00101\"\u0004\u0008?\u00103R$\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER$\u0010 \u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010K\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "",
        "attrs",
        "",
        "copyFrom",
        "clone",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "copyPenAttrs",
        "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;",
        "getLineStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "getShapeLineStyle",
        "",
        "isAreaEraser",
        "",
        "component1",
        "",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "component8",
        "strokeWidth",
        "strokeColor",
        "lineStyleType",
        "currentShapeType",
        "eraserWidth",
        "currentEraseType",
        "penAttrs",
        "penArgs",
        "copy",
        "",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "e",
        "F",
        "getStrokeWidth",
        "()F",
        "setStrokeWidth",
        "(F)V",
        "f",
        "I",
        "getStrokeColor",
        "()I",
        "setStrokeColor",
        "(I)V",
        "g",
        "getLineStyleType",
        "setLineStyleType",
        "h",
        "getCurrentShapeType",
        "setCurrentShapeType",
        "i",
        "getEraserWidth",
        "setEraserWidth",
        "j",
        "getCurrentEraseType",
        "setCurrentEraseType",
        "k",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "getPenAttrs",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "setPenAttrs",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "getPenArgs",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "setPenArgs",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V",
        "<init>",
        "(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:I

.field public k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;-><init>(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0
    .param p7    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    .line 7
    iput p5, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    .line 8
    iput p6, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    .line 9
    iput-object p7, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    .line 10
    iput-object p8, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-void
.end method

.method public synthetic constructor <init>(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/high16 v2, -0x1000000

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto :goto_3

    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    const/high16 v5, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_4
    move v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    move v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    move-object v7, v8

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    move p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    .line 11
    invoke-direct/range {p0 .. p8}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;-><init>(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;ILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->copy(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.data.NoteDrawingArgs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->clone()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p0

    return-object p0
.end method

.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    return p0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    return p0
.end method

.method public final component7()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-object p0
.end method

.method public final component8()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-object p0
.end method

.method public final copy(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
    .locals 10
    .param p7    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;-><init>(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-object v9
.end method

.method public final copyFrom(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    iget-object v0, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-void
.end method

.method public final copyPenAttrs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->Companion:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;->copy(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    iget v3, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    iget v3, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    iget v3, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    iget v3, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    iget v3, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    iget v3, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    iget-object v3, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCurrentEraseType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    return p0
.end method

.method public final getCurrentShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    return p0
.end method

.method public final getEraserWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    return p0
.end method

.method public final getLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->getLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getLineStyleType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    return p0
.end method

.method public final getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-object p0
.end method

.method public final getPenAttrs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-object p0
.end method

.method public final getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isGraphicalShape(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isAreaEraser()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCurrentEraseType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    return-void
.end method

.method public final setCurrentShapeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    return-void
.end method

.method public final setEraserWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    return-void
.end method

.method public final setLineStyleType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    return-void
.end method

.method public final setPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-void
.end method

.method public final setPenAttrs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoteDrawingArgs(strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", strokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineStyleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentShapeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eraserWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", currentEraseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", penAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->k:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", penArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->l:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
