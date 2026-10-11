.class public final synthetic Lcom/sunia/HTREnginev2/y60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/vml/impl/CTArcImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/vml/impl/CTArcImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y60;->e:Lcom/microsoft/schemas/vml/impl/CTArcImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y60;->e:Lcom/microsoft/schemas/vml/impl/CTArcImpl;

    invoke-virtual {p0}, Lcom/microsoft/schemas/vml/impl/CTArcImpl;->sizeOfExtrusionArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
