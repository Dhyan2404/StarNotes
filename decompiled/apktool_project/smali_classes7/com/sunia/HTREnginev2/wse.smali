.class public final synthetic Lcom/sunia/HTREnginev2/wse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wse;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wse;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;

    invoke-virtual {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;->sizeOfDataConnectionArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
