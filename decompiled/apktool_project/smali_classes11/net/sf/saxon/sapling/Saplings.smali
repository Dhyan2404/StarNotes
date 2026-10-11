.class public Lnet/sf/saxon/sapling/Saplings;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static comment(Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingComment;
    .locals 1

    new-instance v0, Lnet/sf/saxon/sapling/SaplingComment;

    invoke-direct {v0, p0}, Lnet/sf/saxon/sapling/SaplingComment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static doc()Lnet/sf/saxon/sapling/SaplingDocument;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/sapling/SaplingDocument;

    invoke-direct {v0}, Lnet/sf/saxon/sapling/SaplingDocument;-><init>()V

    return-object v0
.end method

.method public static doc(Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingDocument;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/sapling/SaplingDocument;

    invoke-direct {v0, p0}, Lnet/sf/saxon/sapling/SaplingDocument;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static elem(Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/sapling/SaplingElement;

    invoke-direct {v0, p0}, Lnet/sf/saxon/sapling/SaplingElement;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static elem(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/sapling/SaplingElement;

    invoke-direct {v0, p0}, Lnet/sf/saxon/sapling/SaplingElement;-><init>(Lnet/sf/saxon/s9api/QName;)V

    return-object v0
.end method

.method public static pi(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingProcessingInstruction;
    .locals 1

    new-instance v0, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static text(Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingText;
    .locals 1

    new-instance v0, Lnet/sf/saxon/sapling/SaplingText;

    invoke-direct {v0, p0}, Lnet/sf/saxon/sapling/SaplingText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
