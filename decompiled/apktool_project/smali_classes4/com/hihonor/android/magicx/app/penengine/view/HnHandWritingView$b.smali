.class public Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hihonor/stylus/penengine/view/IDoubleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->setDoubleClickListener(Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;

.field public final synthetic b:Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;


# direct methods
.method public constructor <init>(Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$b;->b:Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;

    iput-object p2, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$b;->a:Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$b;->a:Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;->onChangeBrush(I)V

    :cond_0
    return-void
.end method
