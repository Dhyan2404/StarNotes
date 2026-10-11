.class public final synthetic Lcom/sunia/HTREnginev2/d6e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/event/ComplexContentOutputter;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/event/ComplexContentOutputter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d6e;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d6e;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->a(Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/Boolean;)V

    return-void
.end method
