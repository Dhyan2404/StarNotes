package com.sun.org.apache.xml.internal.utils;

import com.caverock.androidsvg.SVGParser;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes10.dex */
public class StylesheetPIHandler extends DefaultHandler {
    String m_baseID;
    String m_charset;
    String m_media;
    Vector m_stylesheets = new Vector();
    String m_title;
    URIResolver m_uriResolver;

    public StylesheetPIHandler(String str, String str2, String str3, String str4) {
        this.m_baseID = str;
        this.m_media = str2;
        this.m_title = str3;
        this.m_charset = str4;
    }

    public Source getAssociatedStylesheet() {
        int size = this.m_stylesheets.size();
        if (size > 0) {
            return (Source) this.m_stylesheets.elementAt(size - 1);
        }
        return null;
    }

    public String getBaseId() {
        return this.m_baseID;
    }

    public URIResolver getURIResolver() {
        return this.m_uriResolver;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        String str3;
        Source sAXSource;
        if (str.equals(SVGParser.f16042n)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str2, " \t=\n", true);
            String str4 = null;
            boolean z = false;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            Source source = null;
            String str8 = "";
            String str9 = null;
            while (stringTokenizer.hasMoreTokens()) {
                if (z) {
                    z = false;
                } else {
                    str8 = stringTokenizer.nextToken();
                }
                if (!stringTokenizer.hasMoreTokens() || (!str8.equals(" ") && !str8.equals("\t") && !str8.equals("="))) {
                    if (str8.equals("type")) {
                        String nextToken = stringTokenizer.nextToken();
                        while (stringTokenizer.hasMoreTokens() && (nextToken.equals(" ") || nextToken.equals("\t") || nextToken.equals("="))) {
                            nextToken = stringTokenizer.nextToken();
                        }
                        str8 = nextToken;
                        str4 = nextToken.substring(1, nextToken.length() - 1);
                    } else if (str8.equals("href")) {
                        String nextToken2 = stringTokenizer.nextToken();
                        while (stringTokenizer.hasMoreTokens() && (nextToken2.equals(" ") || nextToken2.equals("\t") || nextToken2.equals("="))) {
                            nextToken2 = stringTokenizer.nextToken();
                        }
                        if (stringTokenizer.hasMoreTokens()) {
                            String str10 = nextToken2;
                            String nextToken3 = stringTokenizer.nextToken();
                            while (nextToken3.equals("=") && stringTokenizer.hasMoreTokens()) {
                                str10 = str10 + nextToken3 + stringTokenizer.nextToken();
                                if (!stringTokenizer.hasMoreTokens()) {
                                    break;
                                }
                                nextToken3 = stringTokenizer.nextToken();
                                z = true;
                            }
                            String str11 = str10;
                            str3 = nextToken3;
                            nextToken2 = str11;
                        } else {
                            str3 = nextToken2;
                        }
                        str9 = nextToken2.substring(1, nextToken2.length() - 1);
                        try {
                            URIResolver uRIResolver = this.m_uriResolver;
                            if (uRIResolver != null) {
                                sAXSource = uRIResolver.resolve(str9, this.m_baseID);
                            } else {
                                str9 = SystemIDResolver.getAbsoluteURI(str9, this.m_baseID);
                                sAXSource = new SAXSource(new InputSource(str9));
                            }
                            Source source2 = sAXSource;
                            str8 = str3;
                            source = source2;
                        } catch (TransformerException e) {
                            throw new SAXException(e);
                        }
                    } else if (str8.equals("title")) {
                        String nextToken4 = stringTokenizer.nextToken();
                        while (stringTokenizer.hasMoreTokens() && (nextToken4.equals(" ") || nextToken4.equals("\t") || nextToken4.equals("="))) {
                            nextToken4 = stringTokenizer.nextToken();
                        }
                        str8 = nextToken4;
                        str7 = nextToken4.substring(1, nextToken4.length() - 1);
                    } else if (str8.equals(SVGParser.f16046r)) {
                        String nextToken5 = stringTokenizer.nextToken();
                        while (stringTokenizer.hasMoreTokens() && (nextToken5.equals(" ") || nextToken5.equals("\t") || nextToken5.equals("="))) {
                            nextToken5 = stringTokenizer.nextToken();
                        }
                        str8 = nextToken5;
                        str5 = nextToken5.substring(1, nextToken5.length() - 1);
                    } else if (str8.equals("charset")) {
                        String nextToken6 = stringTokenizer.nextToken();
                        while (stringTokenizer.hasMoreTokens() && (nextToken6.equals(" ") || nextToken6.equals("\t") || nextToken6.equals("="))) {
                            nextToken6 = stringTokenizer.nextToken();
                        }
                        str8 = nextToken6;
                        str6 = nextToken6.substring(1, nextToken6.length() - 1);
                    } else if (str8.equals(SVGParser.f16044p)) {
                        str8 = stringTokenizer.nextToken();
                        while (stringTokenizer.hasMoreTokens() && (str8.equals(" ") || str8.equals("\t") || str8.equals("="))) {
                            str8 = stringTokenizer.nextToken();
                        }
                        str8.substring(1, str8.length() - 1).equals("yes");
                    }
                }
            }
            if (str4 != null) {
                if ((str4.equals("text/xsl") || str4.equals("text/xml") || str4.equals("application/xml+xslt")) && str9 != null) {
                    String str12 = this.m_media;
                    if (str12 == null || (str5 != null && str5.equals(str12))) {
                        String str13 = this.m_charset;
                        if (str13 == null || (str6 != null && str6.equals(str13))) {
                            String str14 = this.m_title;
                            if (str14 == null || (str7 != null && str7.equals(str14))) {
                                this.m_stylesheets.addElement(source);
                            }
                        }
                    }
                }
            }
        }
    }

    public void setBaseId(String str) {
        this.m_baseID = str;
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.m_uriResolver = uRIResolver;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        throw new StopParseException();
    }
}
