.class public final synthetic Lcom/sunia/HTREnginev2/o8g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/FaceNamesTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/impl/FaceNamesTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o8g;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/FaceNamesTypeImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o8g;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/FaceNamesTypeImpl;

    invoke-virtual {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/impl/FaceNamesTypeImpl;->sizeOfFaceNameArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
