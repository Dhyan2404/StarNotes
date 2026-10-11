.class public final Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchNoteEntity"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008/\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u00a2\u0006\u0004\u0008:\u0010;J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0002H\u00c6\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u00c6\u0003J\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0002H\u00c6\u0003Ju\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00022\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00022\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010\u001e\u001a\u00020\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0011\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0017\u0010\u0014\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008\u0014\u0010-R\u0017\u0010\u0015\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010 \u001a\u0004\u0008/\u0010\"R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u00080\u0010(\u001a\u0004\u00081\u0010*R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\u001d\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u00086\u00103\u001a\u0004\u00087\u00105R\u0017\u0010\u0019\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u00088\u0010 \u001a\u0004\u00089\u0010\"\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
        "",
        "",
        "component1",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "component2",
        "",
        "component3",
        "",
        "component4",
        "component5",
        "component6",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "component7",
        "component8",
        "component9",
        "type",
        "model",
        "title",
        "isDivider",
        "pageIndex",
        "pageId",
        "textList",
        "hwrList",
        "sectionTitleType",
        "copy",
        "toString",
        "hashCode",
        "other",
        "equals",
        "a",
        "I",
        "getType",
        "()I",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "c",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "d",
        "Z",
        "()Z",
        "e",
        "getPageIndex",
        "f",
        "getPageId",
        "g",
        "Ljava/util/List;",
        "getTextList",
        "()Ljava/util/List;",
        "h",
        "getHwrList",
        "i",
        "getSectionTitleType",
        "<init>",
        "(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;I)V",
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
.field public final a:I

.field public final b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:I


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "textList"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hwrList"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    .line 7
    iput p5, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    .line 8
    iput-object p6, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    .line 10
    iput-object p8, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    .line 11
    iput p9, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x1

    const/4 v0, -0x1

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    const/4 v1, 0x0

    if-eqz p11, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 12
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 13
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move p9, v0

    .line 14
    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->copy(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    return p0
.end method

.method public final component2()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    return-object p0
.end method

.method public final component8()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    return-object p0
.end method

.method public final component9()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    return p0
.end method

.method public final copy(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
    .locals 11
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;I)",
            "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textList"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hwrList"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

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
    instance-of v1, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    iget v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    iget-boolean v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    iget v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    iget p1, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getHwrList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    return p0
.end method

.method public final getSectionTitleType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    return p0
.end method

.method public final getTextList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isDivider()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchNoteEntity(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hwrList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sectionTitleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
