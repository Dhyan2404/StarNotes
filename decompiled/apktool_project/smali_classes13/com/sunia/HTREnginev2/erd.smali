.class public final synthetic Lcom/sunia/HTREnginev2/erd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/erd;->e:Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/erd;->e:Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return-void
.end method
