.class public final synthetic Lcom/sunia/HTREnginev2/jqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jqh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jqh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->getWrapMode()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    move-result-object p0

    return-object p0
.end method
