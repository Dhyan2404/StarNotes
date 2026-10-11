.class public Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hihonor/stylus/penengine/view/IPaintViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->setPaintViewListener(Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;

.field public final synthetic b:Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;


# direct methods
.method public constructor <init>(Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;->b:Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;

    iput-object p2, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;->a:Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;->a:Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;->onEngineInit()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;->a:Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;->onLoaded()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;->a:Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;->onStepChanged(I)V

    :cond_0
    return-void
.end method
