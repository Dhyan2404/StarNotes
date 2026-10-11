.class public final synthetic Lcom/sunia/HTREnginev2/trh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/trh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    iput p2, p0, Lcom/sunia/HTREnginev2/trh;->f:I

    return-void
.end method


# virtual methods
.method public final getGenericProperties()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/trh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    iget p0, p0, Lcom/sunia/HTREnginev2/trh;->f:I

    invoke-static {v0, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
