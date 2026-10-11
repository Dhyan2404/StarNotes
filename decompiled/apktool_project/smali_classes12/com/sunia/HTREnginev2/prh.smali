.class public final synthetic Lcom/sunia/HTREnginev2/prh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/prh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/prh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    move-result-object p0

    return-object p0
.end method
