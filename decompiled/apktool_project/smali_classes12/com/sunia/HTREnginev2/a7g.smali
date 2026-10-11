.class public final synthetic Lcom/sunia/HTREnginev2/a7g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a7g;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a7g;->e:Ljava/lang/Class;

    check-cast p1, Lorg/apache/poi/extractor/ExtractorProvider;

    invoke-static {p0, p1}, Lorg/apache/poi/extractor/ExtractorFactory;->d(Ljava/lang/Class;Lorg/apache/poi/extractor/ExtractorProvider;)Z

    move-result p0

    return p0
.end method
