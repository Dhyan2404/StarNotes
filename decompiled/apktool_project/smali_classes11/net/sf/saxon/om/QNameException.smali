.class public Lnet/sf/saxon/om/QNameException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/QNameException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/QNameException;->message:Ljava/lang/String;

    return-object p0
.end method
