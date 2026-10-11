.class public final Lcom/google/protobuf/MapEntry$b;
.super Lcom/google/protobuf/MapEntryLite$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/MapEntryLite$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/protobuf/Descriptors$Descriptor;

.field public final f:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/MapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/MapEntry;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$FieldType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "defaultInstance",
            "keyType",
            "valueType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/MapEntry<",
            "TK;TV;>;",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/MapEntry;->g(Lcom/google/protobuf/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/protobuf/MapEntry;->h(Lcom/google/protobuf/MapEntry;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3, v0, p4, p2}, Lcom/google/protobuf/MapEntryLite$b;-><init>(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/protobuf/MapEntry$b;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/MapEntry$b$a;

    invoke-direct {p1, p0}, Lcom/google/protobuf/MapEntry$b$a;-><init>(Lcom/google/protobuf/MapEntry$b;)V

    iput-object p1, p0, Lcom/google/protobuf/MapEntry$b;->f:Lcom/google/protobuf/Parser;

    return-void
.end method
