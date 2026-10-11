package net.p110sf.saxon.om;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class AbsolutePath {

    /* renamed from: a */
    public final List<PathElement> f100747a;

    /* renamed from: b */
    public String f100748b;

    /* loaded from: classes11.dex */
    public static class PathElement {

        /* renamed from: a */
        public int f100749a;

        /* renamed from: b */
        public NodeName f100750b;

        /* renamed from: c */
        public int f100751c;

        public PathElement(int i, NodeName nodeName, int i2) {
            this.f100749a = i;
            this.f100750b = nodeName;
            this.f100751c = i2;
        }

        /* renamed from: a */
        public final void m63370a(StringBuilder sb) {
            if (getIndex() != -1) {
                sb.append('[');
                sb.append(getIndex() + "");
                sb.append(']');
            }
        }

        public void addToString(StringBuilder sb, char c) {
            int i = this.f100749a;
            if (i == 1) {
                if (c == 'u') {
                    sb.append("Q{");
                    sb.append(this.f100750b.getURI());
                    sb.append("}");
                } else if (c == 'p') {
                    String prefix = this.f100750b.getPrefix();
                    if (!prefix.isEmpty()) {
                        sb.append(prefix);
                        sb.append(':');
                    }
                } else if (c == 's' && !this.f100750b.getURI().isEmpty()) {
                    sb.append("Q{");
                    sb.append(Err.abbreviateURI(this.f100750b.getURI()));
                    sb.append("}");
                }
                sb.append(this.f100750b.getLocalPart());
                m63370a(sb);
                return;
            }
            if (i == 2) {
                sb.append('@');
                if (!this.f100750b.getURI().isEmpty()) {
                    if (c == 'u') {
                        sb.append("Q{");
                        sb.append(this.f100750b.getURI());
                        sb.append("}");
                    } else if (c == 'p') {
                        String prefix2 = this.f100750b.getPrefix();
                        if (!prefix2.isEmpty()) {
                            sb.append(prefix2);
                            sb.append(':');
                        }
                    } else if (c == 's') {
                        sb.append("Q{");
                        sb.append(Err.abbreviateURI(this.f100750b.getURI()));
                        sb.append("}");
                    }
                }
                sb.append(getName().getLocalPart());
                return;
            }
            if (i == 3) {
                sb.append("text()");
                return;
            }
            if (i == 7) {
                sb.append("processing-instruction(");
                sb.append(this.f100750b.getLocalPart());
                sb.append(MotionUtils.f31762d);
                m63370a(sb);
                return;
            }
            if (i == 8) {
                sb.append("comment()");
                m63370a(sb);
            } else {
                if (i == 9) {
                    sb.append("(/)");
                    return;
                }
                if (i != 13) {
                    return;
                }
                sb.append("namespace::");
                if (this.f100750b.getLocalPart().isEmpty()) {
                    sb.append("*[Q{http://www.w3.org/2005/xpath-functions}local-name()=\"\"]");
                } else {
                    sb.append(this.f100750b.getLocalPart());
                }
            }
        }

        public int getIndex() {
            return this.f100751c;
        }

        public NodeName getName() {
            return this.f100750b;
        }

        public int getNodeKind() {
            return this.f100749a;
        }
    }

    public AbsolutePath(Collection<PathElement> collection) {
        this.f100747a = new ArrayList(collection);
    }

    public static AbsolutePath pathToNode(NodeInfo nodeInfo) {
        LinkedList linkedList = new LinkedList();
        while (nodeInfo != null && nodeInfo.getNodeKind() != 9) {
            linkedList.addFirst(new PathElement(nodeInfo.getNodeKind(), NameOfNode.makeName(nodeInfo), Navigator.getNumberSimple(nodeInfo, null)));
            nodeInfo = nodeInfo.getParent();
        }
        return new AbsolutePath(linkedList);
    }

    public void appendAttributeName(NodeName nodeName) {
        if (!this.f100747a.isEmpty()) {
            List<PathElement> list = this.f100747a;
            if (list.get(list.size() - 1).getNodeKind() == 2) {
                List<PathElement> list2 = this.f100747a;
                list2.remove(list2.size() - 1);
            }
        }
        this.f100747a.add(new PathElement(2, nodeName, 1));
    }

    public boolean equals(Object obj) {
        return (obj instanceof AbsolutePath) && obj.toString().equals(toString());
    }

    public String getPathUsingAbbreviatedUris() {
        StringBuilder sb = new StringBuilder(256);
        for (PathElement pathElement : this.f100747a) {
            sb.append('/');
            pathElement.addToString(sb, 's');
        }
        return sb.toString();
    }

    public String getPathUsingPrefixes() {
        StringBuilder sb = new StringBuilder(256);
        for (PathElement pathElement : this.f100747a) {
            sb.append('/');
            pathElement.addToString(sb, 'p');
        }
        return sb.toString();
    }

    public String getPathUsingUris() {
        StringBuilder sb = new StringBuilder(256);
        for (PathElement pathElement : this.f100747a) {
            sb.append('/');
            pathElement.addToString(sb, 'u');
        }
        return sb.toString();
    }

    public String getSystemId() {
        return this.f100748b;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public void setSystemId(String str) {
        this.f100748b = str;
    }

    public String toString() {
        return getPathUsingUris();
    }
}
