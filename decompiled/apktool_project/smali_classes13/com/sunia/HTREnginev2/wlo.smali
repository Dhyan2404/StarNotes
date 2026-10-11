.class public final synthetic Lcom/sunia/HTREnginev2/wlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wlo;->e:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wlo;->e:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->I(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method
