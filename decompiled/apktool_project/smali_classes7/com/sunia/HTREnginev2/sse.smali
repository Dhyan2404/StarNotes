.class public final synthetic Lcom/sunia/HTREnginev2/sse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sse;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sse;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/schemas/office/visio/x2012/main/impl/DataConnectionsTypeImpl;->getDataConnectionArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;

    move-result-object p0

    return-object p0
.end method
