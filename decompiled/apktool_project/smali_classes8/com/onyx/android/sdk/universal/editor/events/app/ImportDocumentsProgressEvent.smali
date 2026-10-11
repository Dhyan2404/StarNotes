.class public final Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008$\u0008\u0086\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0006\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008\u0012\u0006\u0010\u0018\u001a\u00020\n\u0012\u0006\u0010\u0019\u001a\u00020\u000c\u0012\u0006\u0010\u001a\u001a\u00020\u000c\u0012\u0006\u0010\u001b\u001a\u00020\u000f\u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0004\u0008D\u0010EJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\nH\u00c6\u0003J\t\u0010\r\u001a\u00020\u000cH\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u000cH\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u000fH\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u00c6\u0003Jo\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000f2\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u00c6\u0001J\t\u0010\u001f\u001a\u00020\u001eH\u00d6\u0001J\t\u0010 \u001a\u00020\u000cH\u00d6\u0001J\u0013\u0010#\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0014\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0017\u0010\u0015\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0017\u0010\u0016\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00088\u0006\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0017\u0010\u0018\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\u0017\u0010\u0019\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u0017\u0010\u001a\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u00109\u001a\u0004\u0008=\u0010;R\u0017\u0010\u001b\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010AR\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008B\u00101\u001a\u0004\u0008C\u00103\u00a8\u0006F"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;",
        "",
        "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
        "component1",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
        "component2",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;",
        "component3",
        "",
        "component4",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "component5",
        "",
        "component6",
        "component7",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "component8",
        "",
        "Landroid/net/Uri;",
        "component9",
        "action",
        "currentTaskInfo",
        "totalState",
        "taskInfoList",
        "progressInfo",
        "currentIndex",
        "totalImportCount",
        "importNoteArgs",
        "originUriList",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
        "getAction",
        "()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
        "getCurrentTaskInfo",
        "()Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;",
        "getTotalState",
        "()Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;",
        "d",
        "Ljava/util/List;",
        "getTaskInfoList",
        "()Ljava/util/List;",
        "e",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "getProgressInfo",
        "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "f",
        "I",
        "getCurrentIndex",
        "()I",
        "g",
        "getTotalImportCount",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "getImportNoteArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "i",
        "getOriginUriList",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I

.field public final g:I

.field public final h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "II",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTaskInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskInfoList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importNoteArgs"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originUriList"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    .line 7
    iput p6, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    .line 8
    iput p7, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    .line 9
    iput-object p8, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    .line 10
    iput-object p9, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->IMPORTING:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 12
    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->copy(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    return-object p0
.end method

.method public final component2()Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    return-object p0
.end method

.method public final component3()Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-object p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    return p0
.end method

.method public final component8()Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    return-object p0
.end method

.method public final component9()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "II",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTaskInfo"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalState"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskInfoList"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressInfo"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importNoteArgs"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originUriList"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;

    move-object v1, v0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAction()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    return-object p0
.end method

.method public final getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    return p0
.end method

.method public final getCurrentTaskInfo()Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    return-object p0
.end method

.method public final getImportNoteArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    return-object p0
.end method

.method public final getOriginUriList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-object p0
.end method

.method public final getTaskInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getTotalImportCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    return p0
.end method

.method public final getTotalState()Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImportDocumentsProgressEvent(action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->a:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->b:Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->c:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->e:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalImportCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importNoteArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originUriList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->i:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
