using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class F6646_vk03_puu : System.Web.UI.Page
{
    string polku;

    protected void Page_Load(object sender, EventArgs e)
    {
        polku = ConfigurationManager.AppSettings["DefaultXMLFilePath"];

        try
        {
            XmlDocument dom = new XmlDocument();
            dom.Load(polku);

            TreeView1.Nodes.Clear();
            TreeView1.Nodes.Add(new TreeNode(dom.DocumentElement.Name));
            TreeNode tNode = new TreeNode();
            tNode = TreeView1.Nodes[0];

            AddNode(dom.DocumentElement, tNode);
            TreeView1.ExpandAll();
        }
        catch (Exception ex)
        {
            throw;
        } 

    }

    private void AddNode(XmlNode inXmlNode, TreeNode inTreeNode)
    {
        XmlNode xNode;
        TreeNode tNode;
        XmlNodeList nodelist;

        if (inXmlNode.HasChildNodes)
        {
            nodelist = inXmlNode.ChildNodes;
            for (int i = 0; i <= nodelist.Count -1; i++)
            {
                xNode = inXmlNode.ChildNodes[i];
                inTreeNode.ChildNodes.Add(new TreeNode(xNode.Name));
                tNode = inTreeNode.ChildNodes[i];
                AddNode(xNode, tNode);
            }
        }
        else
        {
            inTreeNode.Text = (inXmlNode.OuterXml).Trim();
        }
     } 

}