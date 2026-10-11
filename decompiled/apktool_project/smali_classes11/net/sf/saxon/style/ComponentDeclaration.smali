.class public Lnet/sf/saxon/style/ComponentDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/style/StyleElement;

.field public final b:Lnet/sf/saxon/style/StylesheetModule;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/StylesheetModule;Lnet/sf/saxon/style/StyleElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/ComponentDeclaration;->b:Lnet/sf/saxon/style/StylesheetModule;

    iput-object p2, p0, Lnet/sf/saxon/style/ComponentDeclaration;->a:Lnet/sf/saxon/style/StyleElement;

    return-void
.end method


# virtual methods
.method public getModule()Lnet/sf/saxon/style/StylesheetModule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ComponentDeclaration;->b:Lnet/sf/saxon/style/StylesheetModule;

    return-object p0
.end method

.method public getPrecedence()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ComponentDeclaration;->b:Lnet/sf/saxon/style/StylesheetModule;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getPrecedence()I

    move-result p0

    return p0
.end method

.method public getSourceElement()Lnet/sf/saxon/style/StyleElement;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ComponentDeclaration;->a:Lnet/sf/saxon/style/StyleElement;

    return-object p0
.end method
