.class public final enum Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

.field public static final enum ANY_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

.field public static final enum DEFAULT_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

.field public static final enum DEFAULT_NAMESPACE_OR_NONE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    const-string v1, "DEFAULT_NAMESPACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    new-instance v1, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    const-string v2, "ANY_NAMESPACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->ANY_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    new-instance v2, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    const-string v3, "DEFAULT_NAMESPACE_OR_NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE_OR_NONE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->$VALUES:[Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 1

    const-class v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->$VALUES:[Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    invoke-virtual {v0}, [Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-object v0
.end method
