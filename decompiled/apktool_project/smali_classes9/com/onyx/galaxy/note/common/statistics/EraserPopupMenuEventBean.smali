.class public final Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u001c\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0007\u0012\u0006\u0010\u0019\u001a\u00020\u0007\u00a2\u0006\u0004\u00086\u00107J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\r\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0007H\u00c6\u0003Jm\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\u001b\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001cH\u00d6\u0001J\u0013\u0010\u001f\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0010\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0017\u0010\u0011\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0017\u0010\u0012\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010%\u001a\u0004\u0008)\u0010\'R\u0017\u0010\u0013\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008\u0013\u0010,R\u0017\u0010\u0014\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010+\u001a\u0004\u0008\u0014\u0010,R\u0017\u0010\u0015\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010+\u001a\u0004\u0008\u0015\u0010,R\u0017\u0010\u0016\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u0017\u0010\u0017\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010+\u001a\u0004\u0008\u0017\u0010,R\u0017\u0010\u0018\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u00084\u0010+\u001a\u0004\u0008\u0018\u0010,R\u0017\u0010\u0019\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u00085\u0010+\u001a\u0004\u0008\u0019\u0010,\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "component1",
        "",
        "component2",
        "component3",
        "",
        "component4",
        "component5",
        "component6",
        "",
        "component7",
        "component8",
        "component9",
        "component10",
        "editorBundle",
        "event",
        "eventType",
        "isEraserPixel",
        "isEraseStrokes",
        "isEraseSelection",
        "thickness",
        "isPressureEraser",
        "isEraseHighlighterOnly",
        "isEraseTapeOnly",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "b",
        "Ljava/lang/String;",
        "getEvent",
        "()Ljava/lang/String;",
        "c",
        "getEventType",
        "d",
        "Z",
        "()Z",
        "e",
        "f",
        "g",
        "F",
        "getThickness",
        "()F",
        "h",
        "i",
        "j",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:F

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    iput-boolean p5, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    iput-boolean p6, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    iput p7, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    iput-boolean p8, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    iput-boolean p9, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    iput-boolean p10, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZILjava/lang/Object;)Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    goto :goto_9

    :cond_9
    move/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->copy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    return p0
.end method

.method public final component7()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    return p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    return p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    return p0
.end method

.method public final copy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;

    move-object v1, v0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)V

    return-object v0
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
    instance-of v1, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    iget v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    iget-boolean p1, p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getEventType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getThickness()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isEraseHighlighterOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    return p0
.end method

.method public final isEraseSelection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    return p0
.end method

.method public final isEraseStrokes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    return p0
.end method

.method public final isEraseTapeOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    return p0
.end method

.method public final isEraserPixel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    return p0
.end method

.method public final isPressureEraser()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EraserPopupMenuEventBean(editorBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEraserPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEraseStrokes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEraseSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", thickness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isPressureEraser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEraseHighlighterOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEraseTapeOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;->j:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
