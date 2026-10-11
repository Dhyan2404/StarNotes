.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchTextBoxAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n766#2:275\n857#2,2:276\n766#2:278\n857#2,2:279\n766#2:281\n857#2,2:282\n766#2:284\n857#2,2:285\n766#2:287\n857#2,2:288\n1855#2:290\n1855#2:291\n1855#2,2:293\n1549#2:295\n1620#2,3:296\n1726#2,3:299\n1856#2:302\n1549#2:303\n1620#2,3:304\n1549#2:307\n1620#2,3:308\n1856#2:311\n1855#2,2:312\n1549#2:314\n1620#2,3:315\n1549#2:318\n1620#2,3:319\n1549#2:322\n1620#2,3:323\n1549#2:326\n1620#2,3:327\n1#3:292\n*S KotlinDebug\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction\n*L\n114#1:275\n114#1:276,2\n115#1:278\n115#1:279,2\n122#1:281\n122#1:282,2\n138#1:284\n138#1:285,2\n142#1:287\n142#1:288,2\n144#1:290\n156#1:291\n164#1:293,2\n169#1:295\n169#1:296,3\n174#1:299,3\n156#1:302\n184#1:303\n184#1:304,3\n185#1:307\n185#1:308,3\n144#1:311\n198#1:312,2\n222#1:314\n222#1:315,3\n227#1:318\n227#1:319,3\n238#1:322\n238#1:323,3\n241#1:326\n241#1:327,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001HB{\u0012\u0006\u0010E\u001a\u00020D\u0012\u0006\u00100\u001a\u00020-\u0012\u0006\u00104\u001a\u000201\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0002\u0012L\u0010<\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000208\u0012\u0004\u0012\u00020\u001c07j \u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000208`9\u00a2\u0006\u0004\u0008F\u0010GJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002J \u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\"\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0002H\u0002J\"\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0002H\u0002J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00022\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J$\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0013\u001a\u00020\u000e2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0002H\u0002J\u001e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u00032\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0002H\u0002J6\u0010$\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u000e2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u001ej\u0008\u0012\u0004\u0012\u00020\u0014`\u001f2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0002J6\u0010%\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u000e2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u001ej\u0008\u0012\u0004\u0012\u00020\u0014`\u001f2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0002J\u0012\u0010\'\u001a\u0004\u0018\u00010\u00142\u0006\u0010&\u001a\u00020\"H\u0002J\u0018\u0010,\u001a\u00020\u00142\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0002R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106RZ\u0010<\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000208\u0012\u0004\u0012\u00020\u001c07j \u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000208`98\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R2\u0010A\u001a\u001e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020>0=j\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020>`?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010@R\u001a\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00030B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u00106\u00a8\u0006I"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Landroid/graphics/RectF;",
        "rectList",
        "mergeKeywordRect",
        "textBoundRect",
        "shapeBoundRect",
        "Landroid/graphics/Matrix;",
        "shapeMatrix",
        "getScaledTextRect",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPageList",
        "q",
        "virtualPages",
        "t",
        "virtualPage",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "r",
        "shape",
        "",
        "l",
        "shapes",
        "u",
        "searchBean",
        "",
        "s",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "shapeList",
        "",
        "",
        "excludedShapeIds",
        "o",
        "n",
        "targetShapeId",
        "m",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "providerHolder",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "model",
        "p",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "noteSearchArgs",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "j",
        "Ljava/util/List;",
        "Lkotlin/Function1;",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;",
        "k",
        "Lkotlin/jvm/functions/Function1;",
        "observer",
        "Ljava/util/HashMap;",
        "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "richTextMap",
        "",
        "resultList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "a",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchTextBoxAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n766#2:275\n857#2,2:276\n766#2:278\n857#2,2:279\n766#2:281\n857#2,2:282\n766#2:284\n857#2,2:285\n766#2:287\n857#2,2:288\n1855#2:290\n1855#2:291\n1855#2,2:293\n1549#2:295\n1620#2,3:296\n1726#2,3:299\n1856#2:302\n1549#2:303\n1620#2,3:304\n1549#2:307\n1620#2,3:308\n1856#2:311\n1855#2,2:312\n1549#2:314\n1620#2,3:315\n1549#2:318\n1620#2,3:319\n1549#2:322\n1620#2,3:323\n1549#2:326\n1620#2,3:327\n1#3:292\n*S KotlinDebug\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction\n*L\n114#1:275\n114#1:276,2\n115#1:278\n115#1:279,2\n122#1:281\n122#1:282,2\n138#1:284\n138#1:285,2\n142#1:287\n142#1:288,2\n144#1:290\n156#1:291\n164#1:293,2\n169#1:295\n169#1:296,3\n174#1:299,3\n156#1:302\n184#1:303\n184#1:304,3\n185#1:307\n185#1:308,3\n144#1:311\n198#1:312,2\n222#1:314\n222#1:315,3\n227#1:318\n227#1:319,3\n238#1:322\n238#1:323,3\n241#1:326\n241#1:327,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteSearchArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->j:Ljava/util/List;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->k:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->l:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->m:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getObserver$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->k:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getResultList$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->m:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$search(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->q(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$search(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->r(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchPages(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->t(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toNoteSearchBeans(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->u(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->j:Ljava/util/List;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getScaledTextRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "textBoundRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapeBoundRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p3

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, p3, v1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/graphics/Matrix;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getKeyword()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public final m(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method

.method public final mergeKeywordRect(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "rectList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v5

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$mergeKeywordRect$2;

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$mergeKeywordRect$2;-><init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIf(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getSearchContext()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getShapeIdsForSearchTextBox()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeListQuery$default(Ljava/lang/String;IILjava/lang/Long;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v3, v5, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "pageUniqueId"

    invoke-virtual {v3, v4, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "shapeType"

    invoke-virtual {v3, v4, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v5, "uniqueId"

    invoke-virtual {v3, v5, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notInExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "shapeConnectionBean.shapeReferenceBean.shapeId"

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getShapeId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v4

    :goto_2
    move-object v5, p3

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->p(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    instance-of v2, v4, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    if-eqz v2, :cond_3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->m(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->setTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :cond_3
    :goto_3
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeListQuery$default(Ljava/lang/String;IILjava/lang/Long;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v2, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "pageUniqueId"

    invoke-virtual {v2, v3, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "shapeType"

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v4, "uniqueId"

    invoke-virtual {v2, v4, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notInExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, v4, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notInExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getKeyword()Ljava/lang/String;

    move-result-object p3

    const-string v2, "text"

    invoke-virtual {v1, v2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fuzzyMatchExpression(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    new-instance p3, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {p3}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {p0, v0, v3}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->p(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p2, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "search "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getKeyword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ShapeList from db:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->shapeFromModel(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setOriginRect(Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public final q(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "concatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->ensureInitReferenceShape$default(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v6, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->l(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemovedShapeMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->o(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->n(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->isVisible(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->isLayerVisible(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object p1
.end method

.method public final s(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->l:Ljava/util/HashMap;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->g()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_3
    new-instance v6, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;

    invoke-direct {v6, v4}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->renderContent()Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->getRichTextRunValue()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    move-result-object v6

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->h()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;->toStandardSentence()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :cond_7
    :goto_2
    const/4 v9, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->f()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_a

    :cond_8
    if-eqz v8, :cond_9

    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v9}, Lcom/onyx/android/sdk/base/extension/StringKt;->allIndexesOf(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :cond_a
    :goto_3
    if-eqz v6, :cond_c

    new-instance v10, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;

    if-nez v8, :cond_b

    const-string v8, ""

    :cond_b
    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v8, v6, v11}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;Ljava/util/List;)V

    iget-object v8, v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->l:Ljava/util/HashMap;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;

    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v10, 0xa

    if-eqz v5, :cond_1a

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v13}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getKeyword()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_e

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;->getItems()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d

    add-int v14, v15, v11

    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :goto_6
    invoke-static {v12, v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_e
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    invoke-virtual {v14}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getWidth()F

    move-result v14

    cmpl-float v14, v14, v13

    if-lez v14, :cond_10

    move v14, v9

    goto :goto_7

    :cond_10
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_f

    goto :goto_8

    :cond_11
    const/4 v11, 0x0

    :goto_8
    check-cast v11, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    if-eqz v11, :cond_12

    sget-object v7, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPageTextBoxShapes$1$2$width$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPageTextBoxShapes$1$2$width$2;

    invoke-static {v11, v7}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    :goto_9
    sget-object v11, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPageTextBoxShapes$1$2$width$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPageTextBoxShapes$1$2$width$3;

    invoke-static {v7, v11}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_13
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    invoke-virtual {v14}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getWidth()F

    move-result v15

    cmpg-float v15, v15, v13

    if-gez v15, :cond_13

    invoke-virtual {v14, v7}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setWidth(F)V

    goto :goto_a

    :cond_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v12}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getX()F

    move-result v14

    invoke-virtual {v12}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getY()F

    move-result v15

    invoke-virtual {v12}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getX()F

    move-result v16

    invoke-virtual {v12}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getWidth()F

    move-result v17

    add-float v10, v16, v17

    invoke-virtual {v12}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getY()F

    move-result v16

    invoke-virtual {v12}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getHeight()F

    move-result v12

    add-float v12, v16, v12

    invoke-direct {v13, v14, v15, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v10, v3, Landroid/graphics/RectF;->left:F

    iget v12, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v10, v12}, Landroid/graphics/RectF;->offset(FF)V

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v10, 0xa

    goto :goto_b

    :cond_15
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_16
    move v14, v9

    goto :goto_c

    :cond_17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v11

    xor-int/2addr v11, v9

    if-nez v11, :cond_18

    const/4 v14, 0x0

    :goto_c
    if-eqz v14, :cond_19

    goto :goto_d

    :cond_19
    invoke-virtual {v0, v7}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->mergeKeywordRect(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-static {v8, v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :goto_d
    const/16 v10, 0xa

    goto/16 :goto_4

    :cond_1a
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v9

    if-eqz v5, :cond_1b

    move-object v7, v8

    goto :goto_e

    :cond_1b
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v0, v7, v3, v8}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->getScaledTextRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/graphics/RectF;

    new-instance v5, Lcom/onyx/android/sdk/base/data/SelectionRegion;

    const/4 v8, 0x0

    sget-object v6, Lcom/onyx/android/sdk/data/common/data/TextContentType;->TEXT_BOX:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/onyx/android/sdk/base/data/SelectionRegion;-><init>(Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1d
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->setSelectionRegions(Ljava/util/List;)V

    return-void
.end method

.method public final t(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->from(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getSearchContext()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getPageIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->setPageIndex(I)V

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->updatePageInfo(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->s(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Ljava/util/List;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelectionRegions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method
