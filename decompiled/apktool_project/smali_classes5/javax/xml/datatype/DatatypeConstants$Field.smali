.class public final Ljavax/xml/datatype/DatatypeConstants$Field;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/datatype/DatatypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->a:Ljava/lang/String;

    iput p2, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjavax/xml/datatype/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->b:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->a:Ljava/lang/String;

    return-object p0
.end method
