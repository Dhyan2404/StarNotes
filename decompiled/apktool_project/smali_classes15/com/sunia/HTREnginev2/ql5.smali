.class public final synthetic Lcom/sunia/HTREnginev2/ql5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMeasureGroupsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMeasureGroupsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ql5;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMeasureGroupsImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ql5;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMeasureGroupsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroup;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMeasureGroupsImpl;->setMeasureGroupArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroup;)V

    return-void
.end method
