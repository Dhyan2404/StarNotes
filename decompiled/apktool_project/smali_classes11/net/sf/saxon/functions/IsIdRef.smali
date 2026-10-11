.class public Lnet/sf/saxon/functions/IsIdRef;
.super Lnet/sf/saxon/lib/ExtensionFunctionDefinition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/IsIdRef$b;
    }
.end annotation


# static fields
.field public static final a:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "is-idref"

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/functions/IsIdRef;->a:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getFunctionQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/functions/IsIdRef;->a:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getMaximumNumberOfArguments()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinimumNumberOfArguments()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResultType([Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/value/SequenceType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public makeCallExpression()Lnet/sf/saxon/lib/ExtensionFunctionCall;
    .locals 1

    new-instance p0, Lnet/sf/saxon/functions/IsIdRef$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sf/saxon/functions/IsIdRef$b;-><init>(Lnet/sf/saxon/functions/IsIdRef$a;)V

    return-object p0
.end method
