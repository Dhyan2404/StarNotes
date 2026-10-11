.class public final synthetic Lcom/sunia/HTREnginev2/e3e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e3e;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3e;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->a(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    return-void
.end method
