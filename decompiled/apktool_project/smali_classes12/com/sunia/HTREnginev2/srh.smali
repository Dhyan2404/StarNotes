.class public final synthetic Lcom/sunia/HTREnginev2/srh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/srh;->a:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/srh;->a:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)Lorg/apache/poi/common/usermodel/GenericRecord;

    move-result-object p0

    return-object p0
.end method
