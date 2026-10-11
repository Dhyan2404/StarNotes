.class public final Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0002\u0008\'\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008F\u0010GJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\u008b\u0001\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0007H\u00c6\u0001J\t\u0010 \u001a\u00020\u0004H\u00d6\u0001J\t\u0010\"\u001a\u00020!H\u00d6\u0001J\u0013\u0010$\u001a\u00020\u00072\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0012\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u0017\u0010\u0013\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0017\u0010\u0014\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010*\u001a\u0004\u0008.\u0010,R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u0008\u0015\u00101\"\u0004\u00082\u00103R\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00100\u001a\u0004\u0008\u0016\u00101\"\u0004\u00085\u00103R\"\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00100\u001a\u0004\u0008\u0017\u00101\"\u0004\u00087\u00103R\"\u0010\u0018\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00100\u001a\u0004\u0008\u0018\u00101\"\u0004\u00089\u00103R\"\u0010\u0019\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u00100\u001a\u0004\u0008\u0019\u00101\"\u0004\u0008;\u00103R\"\u0010\u001a\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00100\u001a\u0004\u0008\u001a\u00101\"\u0004\u0008=\u00103R\"\u0010\u001b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00100\u001a\u0004\u0008\u001b\u00101\"\u0004\u0008?\u00103R\"\u0010\u001c\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u00100\u001a\u0004\u0008\u001c\u00101\"\u0004\u0008A\u00103R\"\u0010\u001d\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u00100\u001a\u0004\u0008\u001d\u00101\"\u0004\u0008C\u00103R\"\u0010\u001e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u00100\u001a\u0004\u0008\u001e\u00101\"\u0004\u0008E\u00103\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;",
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
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "editorBundle",
        "event",
        "eventType",
        "isFreeLasso",
        "isRectLasso",
        "isShape",
        "isPic",
        "isTape",
        "isTextBox",
        "isHandwriting",
        "isHighLighter",
        "isLink",
        "isTag",
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
        "setFreeLasso",
        "(Z)V",
        "e",
        "setRectLasso",
        "f",
        "setShape",
        "g",
        "setPic",
        "h",
        "setTape",
        "i",
        "setTextBox",
        "j",
        "setHandwriting",
        "k",
        "setHighLighter",
        "l",
        "setLink",
        "m",
        "setTag",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZ)V",
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

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZ)V
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    .line 7
    iput-boolean p6, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    .line 8
    iput-boolean p7, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    .line 9
    iput-boolean p8, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    .line 10
    iput-boolean p9, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    .line 11
    iput-boolean p10, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    .line 12
    iput-boolean p11, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    .line 13
    iput-boolean p12, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    .line 14
    iput-boolean p13, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move v12, v2

    goto :goto_5

    :cond_5
    move/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v13, v2

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move v14, v2

    goto :goto_7

    :cond_7
    move/from16 v14, p11

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move v15, v2

    goto :goto_8

    :cond_8
    move/from16 v15, p12

    :goto_8
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_9

    move/from16 v16, v2

    goto :goto_9

    :cond_9
    move/from16 v16, p13

    :goto_9
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 15
    invoke-direct/range {v3 .. v16}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZILjava/lang/Object;)Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    goto :goto_c

    :cond_c
    move/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->copy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZ)Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    return p0
.end method

.method public final component11()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    return p0
.end method

.method public final component12()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    return p0
.end method

.method public final component13()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    return p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    return p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    return p0
.end method

.method public final copy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZ)Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;
    .locals 15
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

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;

    move-object v1, v0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZ)V

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
    instance-of v1, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    iget-boolean p1, p1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getEventType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    if-eqz v1, :cond_5

    move v1, v2

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    if-eqz v1, :cond_6

    move v1, v2

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    if-eqz v1, :cond_7

    move v1, v2

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    if-eqz v1, :cond_8

    move v1, v2

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isFreeLasso()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    return p0
.end method

.method public final isHandwriting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    return p0
.end method

.method public final isHighLighter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    return p0
.end method

.method public final isLink()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    return p0
.end method

.method public final isPic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    return p0
.end method

.method public final isRectLasso()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    return p0
.end method

.method public final isShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    return p0
.end method

.method public final isTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    return p0
.end method

.method public final isTape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    return p0
.end method

.method public final isTextBox()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    return p0
.end method

.method public final setFreeLasso(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    return-void
.end method

.method public final setHandwriting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    return-void
.end method

.method public final setHighLighter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    return-void
.end method

.method public final setLink(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    return-void
.end method

.method public final setPic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    return-void
.end method

.method public final setRectLasso(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    return-void
.end method

.method public final setShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    return-void
.end method

.method public final setTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    return-void
.end method

.method public final setTape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    return-void
.end method

.method public final setTextBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LassoPopupMenuEventBean(editorBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFreeLasso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRectLasso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTextBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHighLighter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->m:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
