.class public final synthetic Lcom/sunia/HTREnginev2/xkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xkk;->e:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xkk;->e:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    check-cast p1, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;->setStyleTextProp9Atom(Lorg/apache/poi/hslf/record/StyleTextProp9Atom;)V

    return-void
.end method
