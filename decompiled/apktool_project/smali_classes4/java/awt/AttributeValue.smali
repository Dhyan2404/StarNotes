.class abstract Ljava/awt/AttributeValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final names:[Ljava/lang/String;

.field private final value:I


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/awt/AttributeValue;->value:I

    iput-object p2, p0, Ljava/awt/AttributeValue;->names:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    iget p0, p0, Ljava/awt/AttributeValue;->value:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/awt/AttributeValue;->names:[Ljava/lang/String;

    iget p0, p0, Ljava/awt/AttributeValue;->value:I

    aget-object p0, v0, p0

    return-object p0
.end method
