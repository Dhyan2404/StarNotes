.class public final Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->L(Landroid/graphics/RectF;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$a;->e:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$a;->e:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getListener()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;->onAnimatorEnd()V

    :cond_0
    return-void
.end method
