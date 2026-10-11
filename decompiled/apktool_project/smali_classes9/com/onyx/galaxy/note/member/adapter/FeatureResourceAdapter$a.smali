.class public final Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->x(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

.field public final synthetic f:Lcom/google/android/exoplayer2/Player;

.field public final synthetic g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->f:Lcom/google/android/exoplayer2/Player;

    iput-object p3, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 8

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->playerTimeBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object p2, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->f:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPosition(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->f:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->f:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->tvDuration:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iget-object p2, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->f:Lcom/google/android/exoplayer2/Player;

    invoke-static {p1, p2, p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->access$hidePlayerVideoControl(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;->a(J)V

    return-void
.end method
