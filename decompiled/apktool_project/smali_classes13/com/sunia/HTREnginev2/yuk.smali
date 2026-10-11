.class public final synthetic Lcom/sunia/HTREnginev2/yuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yuk;->e:Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yuk;->e:Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return-void
.end method
