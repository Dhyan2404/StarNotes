.class public final synthetic Lcom/sunia/HTREnginev2/hue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataRecordSetsTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataRecordSetsTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hue;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataRecordSetsTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hue;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataRecordSetsTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataRecordSetsTypeImpl;->getDataRecordSetArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;

    move-result-object p0

    return-object p0
.end method
