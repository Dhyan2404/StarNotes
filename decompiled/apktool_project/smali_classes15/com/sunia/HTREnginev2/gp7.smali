.class public final synthetic Lcom/sunia/HTREnginev2/gp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTQueryTableDeletedFieldsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTQueryTableDeletedFieldsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gp7;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTQueryTableDeletedFieldsImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gp7;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTQueryTableDeletedFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTQueryTableDeletedFieldsImpl;->insertNewDeletedField(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDeletedField;

    move-result-object p0

    return-object p0
.end method
