.class public final synthetic Lcom/sunia/HTREnginev2/a7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FillStyle;


# instance fields
.field public final synthetic a:Lorg/apache/poi/hslf/usermodel/HSLFFill;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a7h;->a:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    return-void
.end method


# virtual methods
.method public final getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a7h;->a:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->c(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0
.end method
