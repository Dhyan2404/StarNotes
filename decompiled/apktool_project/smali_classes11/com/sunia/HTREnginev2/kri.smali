.class public final synthetic Lcom/sunia/HTREnginev2/kri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/Configuration;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kri;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kri;->e:Lnet/sf/saxon/Configuration;

    check-cast p1, Lorg/xml/sax/XMLReader;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->reuseSourceParser(Lorg/xml/sax/XMLReader;)V

    return-void
.end method
