.class public final synthetic Lcom/sunia/HTREnginev2/qhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qhf;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qhf;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->b(Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
